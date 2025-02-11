import 'dart:io';
import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/cake_section_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/flowers_section_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/date_row_widget.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/quantity_selector.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/show_time_picker.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';

class RequestTypeForm extends StatefulWidget {
  const RequestTypeForm({Key? key}) : super(key: key);

  @override
  State<RequestTypeForm> createState() => _RequestTypeFormState();
}

class _RequestTypeFormState extends State<RequestTypeForm> {
  String selectedType = "كيك و ورد";
  TextEditingController cakeDetailsController = TextEditingController();
  String? flowerType;
  String? flowerColor;
  TimeOfDay? deliveryTime;
  DateTime? selectedDate;
  int quantity = 1;
  List<File> cakeImages = [];
  List<File> flowerImages = [];
  bool isDeliveryTimeValid = true;

  void _handleFlowerTypeChanged(String? value) =>
      setState(() => flowerType = value);
  void _handleFlowerColorChanged(String? value) =>
      setState(() => flowerColor = value);
  void _handleDeliveryTimeChanged(TimeOfDay time) {
    setState(() {
      deliveryTime = time;
      isDeliveryTimeValid = true;
    });
  }

  void _handleDateChanged(DateTime date) => setState(() => selectedDate = date);
  void _handleQuantityChanged(int qty) => setState(() => quantity = qty);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: selectedType,
              decoration: InputDecoration(
                labelText: "نوع الطلب",
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
              items: ["كيك", "ورد", "كيك و ورد"].map((type) {
                return DropdownMenuItem(value: type, child: Text(type));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedType = value!;
                });
              },
            ),
            if (selectedType == 'كيك' || selectedType == 'كيك و ورد')
              CakeSectionComponant(
                controller: cakeDetailsController,
                onImagesChanged: (images) => setState(
                  () => cakeImages = images,
                ),
                onDateChanged: _handleDateChanged,
              ),
            if (selectedType == 'ورد' || selectedType == 'كيك و ورد')
              FlowersSectionComponant(
                onTypeChanged: _handleFlowerTypeChanged,
                onColorChanged: _handleFlowerColorChanged,
                onImagesChanged: (images) =>
                    setState(() => flowerImages = images),
                onDateChanged: _handleDateChanged,
              ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                QuantitySelector(onChanged: _handleQuantityChanged),
                const Spacer(),
                DeliveryTimePicker(
                  initialTime: deliveryTime,
                  onTimeChanged: _handleDeliveryTimeChanged,
                ),
              ],
            ),
            if (!isDeliveryTimeValid)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "الرجاء اختيار وقت التوصيل!",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            DateRowWidget(onDateChanged: _handleDateChanged),
            BlocConsumer<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (requestModel) {
                    context.go(
                        "${RouterNames.priceDetailsView}/${requestModel.order.id}");
                  },
                  failure: (error) {
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
                  loading: () => const CircularProgressIndicator(),
                  orElse: () => CustomButton(
                    text: "التالي",
                    onPressed: () {
                      if (deliveryTime == null) {
                        setState(() {
                          isDeliveryTimeValid = false;
                        });
                        return;
                      }

                      final requestModel = AddOrderRequestModel(
                        files: cakeImages + flowerImages,
                        orderType: selectedType,
                        orderDetails: cakeDetailsController.text,
                        quantity: quantity,
                        deliveryDate: selectedDate?.toIso8601String() ?? '',
                        deliveryTime:
                            '${deliveryTime!.hour.toString().padLeft(2, '0')}:${deliveryTime!.minute.toString().padLeft(2, '0')}',
                        flowerId: flowerType ?? '',
                        flowerQuantity: quantity,
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
