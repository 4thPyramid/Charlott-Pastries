import 'dart:io';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  final String orderType;

  const UpdateOrderView(
      {super.key, required this.orderId, required this.orderType});

  @override
  State<UpdateOrderView> createState() => _UpdateOrderViewState();
}

class _UpdateOrderViewState extends State<UpdateOrderView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _orderDetailsController = TextEditingController();
  final TextEditingController _flowerDetailsController =
      TextEditingController();

  final TextEditingController _customerNameController = TextEditingController();
  final TextEditingController _customerPhoneController =
      TextEditingController();
  final TextEditingController _customerAddressController =
      TextEditingController();
  final TextEditingController _cakePriceController = TextEditingController();
  final TextEditingController _flowerPriceController = TextEditingController();
  final TextEditingController _deliveryPriceController =
      TextEditingController();
  final TextEditingController _depositController = TextEditingController();

  TimeOfDay? deliveryTimeFrom;
  TimeOfDay? deliveryTimeTo;
  DateTime? selectedDate;
  bool isDeliveryTimeValid = true;
  bool isLoading = true;
  List<XFile>? _images;
  List<String> _existingImageUrls = [];
  List<int> _existingImageIds = []; // لتخزين معرفات الصور الموجودة

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SalesOrderDetailsCubit>()
          .getOrderDetails(widget.orderId.toString());
    });
  }

  @override
  void dispose() {
    _orderDetailsController.dispose();
    _flowerDetailsController.dispose();
    _customerNameController.dispose();
    _customerPhoneController.dispose();
    _customerAddressController.dispose();
    _cakePriceController.dispose();
    _flowerPriceController.dispose();
    _deliveryPriceController.dispose();
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
      _flowerDetailsController.text = orderData['description'] ?? '';
      _customerNameController.text = orderData['customer_name'] ?? '';
      _customerPhoneController.text = orderData['customer_phone'] ?? '';
      _customerAddressController.text = orderData['additional_data'] ?? '';

      _cakePriceController.text = (orderData['cake_price'] ?? '').toString();
      _flowerPriceController.text =
          (orderData['flower_price'] ?? '').toString();
      _deliveryPriceController.text =
          (orderData['delivery_price'] ?? '').toString();
      _depositController.text = (orderData['deposit'] ?? '').toString();

      if (orderData['delivery_date'] != null &&
          orderData['delivery_date'].toString().isNotEmpty) {
        try {
          selectedDate = DateTime.parse(orderData['delivery_date']);
        } catch (e) {
          print("خطأ في تحليل تاريخ التسليم: $e");
        }
      }

      // التحقق من صحة وقت التسليم "من"
      if (orderData['delivery_time_from'] != null &&
          orderData['delivery_time_from'].toString().isNotEmpty) {
        final timeParts = orderData['delivery_time_from'].toString().split(':');
        if (timeParts.length == 2) {
          deliveryTimeFrom = TimeOfDay(
            hour: int.tryParse(timeParts[0]) ?? 0,
            minute: int.tryParse(timeParts[1]) ?? 0,
          );
        }
      }

      // التحقق من صحة وقت التسليم "إلى"
      if (orderData['delivery_time_to'] != null &&
          orderData['delivery_time_to'].toString().isNotEmpty) {
        final timeParts = orderData['delivery_time_to'].toString().split(':');
        if (timeParts.length == 2) {
          deliveryTimeTo = TimeOfDay(
            hour: int.tryParse(timeParts[0]) ?? 0,
            minute: int.tryParse(timeParts[1]) ?? 0,
          );
        }
      }

      // تحسين استخراج الصور
      if (orderData['images'] is List) {
        final List imageList = orderData['images'] as List;
        _existingImageUrls = [];
        _existingImageIds = [];

        for (var image in imageList) {
          if (image is Map<String, dynamic>) {
            final String imageUrl = image['image'] as String? ?? '';
            final int imageId = image['id'] as int? ?? 0;

            if (imageUrl.isNotEmpty) {
              _existingImageUrls.add(imageUrl);
              _existingImageIds.add(imageId);
            }
          }
        }
      } else {
        _existingImageUrls = [];
        _existingImageIds = [];
      }

      print("📸 Existing Images: $_existingImageUrls");
      print("🆔 Existing Image IDs: $_existingImageIds");

      isLoading = false;
    });
  }

  Future _pickImages() async {
    try {
      final List<XFile> pickedFiles = await ImagePicker().pickMultiImage();
      if (pickedFiles.isNotEmpty) {
        setState(() {
          _images = pickedFiles;
        });
      }
    } catch (e) {
      print("خطأ في اختيار الصور: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("حدث خطأ أثناء اختيار الصور: $e")),
      );
    }
  }

  void _removeExistingImage(int index) {
    setState(() {
      if (index >= 0 && index < _existingImageUrls.length) {
        _existingImageUrls.removeAt(index);
        _existingImageIds.removeAt(index);
      }
    });
  }

  void _removeNewImage(int index) {
    setState(() {
      if (index >= 0 && index < (_images?.length ?? 0)) {
        _images!.removeAt(index);
      }
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate() && isDeliveryTimeValid) {
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
        'description': _flowerDetailsController.text,
        'customer_name': _customerNameController.text,
        'customer_phone': _customerPhoneController.text,
        'additional_data': _customerAddressController.text,
        'cake_price': _cakePriceController.text,
        'flower_price': _flowerPriceController.text,
        'delivery_price': _deliveryPriceController.text,
        'deposit': _depositController.text,
        'delivery_date': selectedDate?.toIso8601String().split('T').first,
        'delivery_time_from': formattedTimeFrom,
        "from": formattedTimeFrom,
        "to": formattedTimeTo,
        'delivery_time_to': formattedTimeTo,
        'image_ids': _existingImageIds,
      };

      List<dio.MultipartFile>? multipartImages;
      if (_images != null && _images!.isNotEmpty) {
        try {
          multipartImages = await Future.wait(_images!.map((image) async {
            return await dio.MultipartFile.fromFile(
              image.path,
              filename: image.name,
            );
          }));
        } catch (e) {
          print("خطأ في تحويل الصور: $e");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("حدث خطأ أثناء تحضير الصور: $e")),
          );
          return;
        }
      }

      context.read<UpdateOrderCubit>().updateOrder(
            widget.orderId,
            updatedFields,
            multipartImages,
          );
    } else {
      if (!isDeliveryTimeValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("الرجاء التأكد من صحة أوقات التسليم")),
        );
      }
    }
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
              if (state is UpdateOrderLoading) {
              } else if (state is UpdateOrderSuccess) {
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
                        if (widget.orderType != "flower")
                          Column(
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
                            ],
                          ),

                        if (widget.orderType != "cake")
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flower Description",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              TextFormField(
                                controller: _flowerDetailsController,
                                decoration: InputDecoration(
                                  labelText: AppStrings.orderDetails.tr(),
                                  border: const OutlineInputBorder(),
                                ),
                                maxLines: 3,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter the flower description";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16.h),
                            ],
                          ),

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

                        if (widget.orderType != "flower")
                          TextFormField(
                            controller: _cakePriceController,
                            decoration: const InputDecoration(
                              labelText: "Cake Price",
                              border: OutlineInputBorder(),
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
                        if (widget.orderType != "flower")
                          SizedBox(height: 12.h),

                        if (widget.orderType != "cake")
                          TextFormField(
                            controller: _flowerPriceController,
                            decoration: const InputDecoration(
                              labelText: "Flower Price",
                              border: OutlineInputBorder(),
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
                        if (widget.orderType != "cake") SizedBox(height: 12.h),

                        TextFormField(
                          controller: _deliveryPriceController,
                          decoration: const InputDecoration(
                            labelText: "Delivery Price",
                            border: OutlineInputBorder(),
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
                        SizedBox(height: 16.h),

                        // Image Selection Section
                        Row(
                          children: [
                            Text(
                              "Images",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: _pickImages,
                              icon: Icon(
                                Icons.add_a_photo,
                                color: AppColors.primaryColor,
                                size: 30.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),

                        // Existing Images with Remove Option
                        if (_existingImageUrls.isNotEmpty)
                          Wrap(
                            children: List.generate(_existingImageUrls.length,
                                (index) {
                              return Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    width: 100.w,
                                    height: 100.h,
                                    child: CachedNetworkImage(
                                      imageUrl: _existingImageUrls[index],
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: GestureDetector(
                                      onTap: () => _removeExistingImage(index),
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),

                        // New Images with Remove Option
                        if (_images != null && _images!.isNotEmpty)
                          Wrap(
                            children: List.generate(_images!.length, (index) {
                              return Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    width: 100.w,
                                    height: 100.h,
                                    child: Image.file(
                                      File(_images![index].path),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: GestureDetector(
                                      onTap: () => _removeNewImage(index),
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),

                        SizedBox(height: 32.h),

                        // Submit Button
                        Center(
                          child:
                              BlocBuilder<UpdateOrderCubit, UpdateOrderState>(
                            builder: (context, state) {
                              final isSubmitting = state is UpdateOrderLoading;

                              return CustomButton(
                                text: isSubmitting
                                    ? "Updating..."
                                    : "Update Order",
                                onPressed: _submitForm,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 16.h),
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
