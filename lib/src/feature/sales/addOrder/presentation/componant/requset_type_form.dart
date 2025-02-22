import 'dart:io';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/cake_section_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/flowers_section_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/date_row_widget.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/show_time_picker.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';

class RequestTypeForm extends StatefulWidget {
  const RequestTypeForm({super.key});

  @override
  State<RequestTypeForm> createState() => _RequestTypeFormState();
}

class _RequestTypeFormState extends State<RequestTypeForm> {
  bool isSameDay = false;
  String selectedType = "cake and flower";
  TextEditingController cakeDetailsController = TextEditingController();
  TextEditingController flowerDetailsController = TextEditingController();
  String? flowerType;
  String? flowerColor;
  TimeOfDay? deliveryTimeFrom;
  TimeOfDay? deliveryTimeTo;
  DateTime? selectedDate;
  int quantity = 1;
  List<File> cakeImages = [];
  List<File> flowerImages = [];
  bool isDeliveryTimeValid = true;

  void _handleDeliveryTimeToChanged(TimeOfDay time) {
    setState(() {
      deliveryTimeFrom = time;
      isDeliveryTimeValid = true;
    });
  }
  void _handleDeliveryTimeFromChanged(TimeOfDay time) {
    setState(() {
      deliveryTimeTo = time;
      isDeliveryTimeValid = true;
    });
  }

  void _handleDateChanged(DateTime date) => setState(() => selectedDate = date);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            BlocBuilder<AddOrderCubit, AddOrderState>(
              builder: (context, state) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              color:
                                  state.isSameDay ? Colors.green : Colors.grey,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Same day delivery?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: state.isSameDay
                                    ? Colors.green
                                    : Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Switch(
                          value: state.isSameDay,
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.black,
                          onChanged: (value) {
                          //  print("------------------value--$value");
                          //  print("---------------state-----${state.isSameDay}");
                            if(value == true){
                            CacheHelper.saveData(key: 'isSameDay', value: true);
                            }else{
                              CacheHelper.saveData(key: 'isSameDay', value: false);
                            }

                            context
                                .read<AddOrderCubit>()
                                .updateSameDayDelivery(value);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              value: selectedType,
              decoration: InputDecoration(
                labelText: "Request Type",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
              ),
              items: ["cake", "flower", "cake and flower"].map((type) {
                return DropdownMenuItem(value: type, child: Text(type));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedType = value!;
                });
              },
            ),
            if (selectedType == 'cake' || selectedType == 'cake and flower')
              CakeSectionComponant(
                controller: cakeDetailsController,
                onImagesChanged: (images) => setState(
                  () => cakeImages = images,
                ),
                onDateChanged: _handleDateChanged,
              ),
            if (selectedType == 'flower' || selectedType == 'cake and flower')
              FlowersSectionComponant(
                onImagesChanged: (images) =>
                    setState(() => flowerImages = images),
                controller: flowerDetailsController,
              ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                DeliveryTimePicker(
                  title: "From",
                  initialTime: deliveryTimeFrom,
                  onTimeChanged: _handleDeliveryTimeFromChanged,
                ),
                const Spacer(),
                DeliveryTimePicker(
                  initialTime: deliveryTimeTo,
                  onTimeChanged: _handleDeliveryTimeToChanged,
                  title: 'To',
                ),
              ],
            ),
            if (!isDeliveryTimeValid)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Please select a valid delivery time.",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            DateRowWidget(onDateChanged: _handleDateChanged),
            BlocConsumer<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (requestModel, _) {
                    context.go(
                        "${RouterNames.priceDetailsView}/${requestModel.order?.id}");
                  },
                  failure: (error, _) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error.message),
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: (isLoading) => const CircularProgressIndicator(),
                  orElse: () => CustomButton(
                    text: "Next",
                    onPressed: () {
                      if (deliveryTimeFrom == null|| deliveryTimeTo == null) {
                        setState(() {
                          isDeliveryTimeValid = false;

                        }); 
                        return;
                      }

                      final requestModel = AddOrderRequestModel(
                        files: cakeImages + flowerImages,
                        isSameDay: isSameDay,
                        orderType: selectedType,
                        orderDetails: cakeDetailsController.text,
                        quantity: quantity,
                        deliveryDate: selectedDate?.toIso8601String() ?? '',
                      
                        description: flowerDetailsController.text,
                        from: deliveryTimeFrom != null ? '${deliveryTimeFrom!.hour.toString().padLeft(2, '0')}:${deliveryTimeFrom!.minute.toString().padLeft(2, '0')}' : '',
                        to: deliveryTimeTo != null ? '${deliveryTimeTo!.hour.toString().padLeft(2, '0')}:${deliveryTimeTo!.minute.toString().padLeft(2, '0')}' : ''
                      );

                      context
                          .read<AddOrderCubit>()
                          .addOrderDetails(requestModel);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
