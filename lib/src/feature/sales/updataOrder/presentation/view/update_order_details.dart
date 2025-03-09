import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/date_row_widget.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/show_time_picker.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/cubit/sales_order_details_cubit.dart';
import 'package:charlot/src/feature/sales/updataOrder/presentation/cubit/update_order_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class UpdateOrderView extends StatefulWidget {
  final int orderId;

  const UpdateOrderView({super.key, required this.orderId});

  @override
  State<UpdateOrderView> createState() => _UpdateOrderViewState();
}

class _UpdateOrderViewState extends State<UpdateOrderView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _orderDetailsController = TextEditingController();
  final TextEditingController _customerNameController = TextEditingController();
  final TextEditingController _customerPhoneController =
      TextEditingController();
  final TextEditingController _customerAddressController =
      TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _depositController = TextEditingController();

  TimeOfDay? deliveryTimeFrom;
  TimeOfDay? deliveryTimeTo;
  DateTime? selectedDate;
  bool isDeliveryTimeValid = true;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Load order data when the screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SalesOrderDetailsCubit>()
          .getOrderDetails(widget.orderId.toString());
    });
  }

  @override
  void dispose() {
    _orderDetailsController.dispose();
    _customerNameController.dispose();
    _customerPhoneController.dispose();
    _customerAddressController.dispose();
    _priceController.dispose();
    _depositController.dispose();
    super.dispose();
  }

  void _handleDeliveryTimeFromChanged(TimeOfDay time) {
    setState(() {
      deliveryTimeFrom = time;
      _validateDeliveryTime();
    });
  }

  void _handleDeliveryTimeToChanged(TimeOfDay time) {
    setState(() {
      deliveryTimeTo = time;
      _validateDeliveryTime();
    });
  }

  void _validateDeliveryTime() {
    if (deliveryTimeFrom != null && deliveryTimeTo != null) {
      // Convert to minutes for easier comparison
      final fromMinutes =
          deliveryTimeFrom!.hour * 60 + deliveryTimeFrom!.minute;
      final toMinutes = deliveryTimeTo!.hour * 60 + deliveryTimeTo!.minute;

      setState(() {
        isDeliveryTimeValid = toMinutes > fromMinutes;
      });
    }
  }

  void _handleDateChanged(DateTime date) => setState(() => selectedDate = date);

  void _populateFormWithOrderData(Map<String, dynamic> orderData) {
    setState(() {
      _orderDetailsController.text = orderData['order_details'] ?? '';
      _customerNameController.text = orderData['customer_name'] ?? '';
      _customerPhoneController.text = orderData['customer_phone'] ?? '';
      _customerAddressController.text = orderData['additional_data'] ?? '';
      _priceController.text = (orderData['cake_price'] ?? '').toString();
      _depositController.text = (orderData['deposit'] ?? '').toString();

      if (orderData['delivery_date'] != null) {
        try {
          selectedDate = DateTime.parse(orderData['delivery_date']);
        } catch (e) {
          // Handle date parsing error
        }
      }

      if (orderData['delivery_time_from'] != null) {
        final timeParts = orderData['delivery_time_from'].split(':');
        if (timeParts.length == 2) {
          deliveryTimeFrom = TimeOfDay(
            hour: int.parse(timeParts[0]),
            minute: int.parse(timeParts[1]),
          );
        }
      }

      if (orderData['delivery_time_to'] != null) {
        final timeParts = orderData['delivery_time_to'].split(':');
        if (timeParts.length == 2) {
          deliveryTimeTo = TimeOfDay(
            hour: int.parse(timeParts[0]),
            minute: int.parse(timeParts[1]),
          );
        }
      }

      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Order"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<UpdateOrderCubit, UpdateOrderState>(
            listener: (context, state) {
              if (state is UpdateOrderSuccess) {
                context
                    .read<SalesOrderDetailsCubit>()
                    .getOrderDetails(widget.orderId.toString());
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Order updated successfully")),
                );

                context
                    .push("${RouterNames.salesOrderDetails}/${widget.orderId}");
              } else if (state is UpdateOrderFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              }
            },
          ),
          BlocListener<SalesOrderDetailsCubit, SalesOrderDetailsState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (response) {
                  _populateFormWithOrderData(response.toJson());
                },
                failure: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error.message)),
                  );
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<SalesOrderDetailsCubit, SalesOrderDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              orElse: () {
                if (isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.orderDetails.tr(),
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        // Order Details
                        TextFormField(
                          controller: _orderDetailsController,
                          decoration: InputDecoration(
                            labelText: AppStrings.orderDetails.tr(),
                            border: const OutlineInputBorder(),
                          ),
                          maxLines: 3,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the order details";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.h),

                        // Customer Information
                        Text(
                          "Customer Information",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        TextFormField(
                          controller: _customerNameController,
                          decoration: InputDecoration(
                            labelText: AppStrings.customerName.tr(),
                            border: const OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the customer name";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 12.h),

                        TextFormField(
                          controller: _customerPhoneController,
                          decoration: const InputDecoration(
                            labelText: "Customer Phone",
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the customer phone number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 12.h),

                        TextFormField(
                          controller: _customerAddressController,
                          decoration: InputDecoration(
                            labelText: AppStrings.customerAddress.tr(),
                            border: const OutlineInputBorder(),
                          ),
                          maxLines: 2,
                        ),
                        SizedBox(height: 16.h),

                        // Price Information
                        Text(
                          "Price Information",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        TextFormField(
                          controller: _priceController,
                          decoration: InputDecoration(
                            labelText: AppStrings.totalPrice.tr(),
                            border: const OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the cake price";
                            }
                            if (double.tryParse(value) == null) {
                              return "Please enter a valid number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 12.h),

                        TextFormField(
                          controller: _depositController,
                          decoration: InputDecoration(
                            labelText: AppStrings.deposit.tr(),
                            border: const OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value != null &&
                                value.isNotEmpty &&
                                double.tryParse(value) == null) {
                              return "Please enter a valid number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24.h),

                        // Delivery Time Section
                        Text(
                          AppStrings.deliveryTime.tr(),
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        Row(
                          children: [
                            Expanded(
                              child: DeliveryTimePicker(
                                title: AppStrings.from.tr(),
                                initialTime: deliveryTimeFrom,
                                onTimeChanged: _handleDeliveryTimeFromChanged,
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Expanded(
                              child: DeliveryTimePicker(
                                initialTime: deliveryTimeTo,
                                onTimeChanged: _handleDeliveryTimeToChanged,
                                title: AppStrings.to.tr(),
                              ),
                            ),
                          ],
                        ),

                        if (!isDeliveryTimeValid)
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              "Please enter a valid delivery time",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.sp),
                            ),
                          ),

                        SizedBox(height: 16.h),

                        // Delivery Date Section
                        Text(
                          AppStrings.deliveryDate.tr(),
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        DatePickerWidget(
                          onDateChanged: _handleDateChanged,
                          initialDate: selectedDate,
                        ),

                        SizedBox(height: 32.h),
                        CustomButton(
                          text: "Update Order",
                          onPressed: () {
                            String? formattedTimeFrom;
                            if (deliveryTimeFrom != null) {
                              formattedTimeFrom =
                                  '${deliveryTimeFrom!.hour.toString().padLeft(2, '0')}:${deliveryTimeFrom!.minute.toString().padLeft(2, '0')}';
                            }

                            String? formattedTimeTo;
                            if (deliveryTimeTo != null) {
                              formattedTimeTo =
                                  '${deliveryTimeTo!.hour.toString().padLeft(2, '0')}:${deliveryTimeTo!.minute.toString().padLeft(2, '0')}';
                            }

                            final updatedFields = {
                              'order_details': _orderDetailsController.text,
                              'customer_name': _customerNameController.text,
                              'customer_phone': _customerPhoneController.text,
                              'additional_data':
                                  _customerAddressController.text,
                              'delivery_date':
                                  selectedDate?.toIso8601String() ??
                                      DateTime.now().toIso8601String(),
                              'delivery_time_from': formattedTimeFrom,
                              'delivery_time_to': formattedTimeTo,
                              'cake_price':
                                  double.tryParse(_priceController.text) ?? 0.0,
                              'deposit':
                                  double.tryParse(_depositController.text) ??
                                      0.0,
                            };

                            context.read<UpdateOrderCubit>().updateOrder(
                                  int.parse(widget.orderId.toString()),
                                  updatedFields,
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
