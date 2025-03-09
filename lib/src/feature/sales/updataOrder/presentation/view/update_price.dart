import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatePrice extends StatelessWidget {
  UpdatePrice(
      {super.key,
      required this.orderId,
      required this.isSameday,
      required this.orderType});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController depositController = TextEditingController();
  final TextEditingController deliveryPriceController = TextEditingController();
  final TextEditingController cakePriceController = TextEditingController();
  final TextEditingController flowerPriceController = TextEditingController();

  final int orderId;
  final String isSameday;
  final String orderType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            if (orderType == "cake" || orderType == "cake and flower") ...[
              Text("Cake Price",
                  style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
              SizedBox(height: 10.h),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                hintText: 'Enter the cake price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the cake price';
                  }
                  return null;
                },
                prefixIcon: const Icon(Icons.cake,
                    size: 30, color: AppColors.primaryColor),
                controller: cakePriceController,
              ),
              SizedBox(height: 10.h),
            ],
            if (orderType == "flower" || orderType == "cake and flower") ...[
              Text("Flower Price",
                  style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
              SizedBox(height: 10.h),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                hintText: 'Enter the flower price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the flower price';
                  }
                  return null;
                },
                prefixIcon:
                    const Icon(Icons.money, size: 30, color: AppColors.green),
                controller: flowerPriceController,
              ),
              SizedBox(height: 10.h),
            ],
            Text("Delivery Price",
                style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: 10.h),
            CustomTextFormField(
              keyboardType: TextInputType.number,
              hintText: 'Enter the delivery price',
              validator: (value) => value == null || value.isEmpty
                  ? 'Please enter the delivery price'
                  : null,
              prefixIcon: const Icon(Icons.attach_money_rounded,
                  size: 30, color: AppColors.orange),
              controller: deliveryPriceController,
            ),
            SizedBox(height: 10.h),
            Text("Deposit",
                style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: 10.h),
            CustomTextFormField(
              keyboardType: TextInputType.number,
              hintText: 'Enter the deposit if it exists',
              validator: (value) => null, // الدفعة المقدمة ليست إلزامية
              prefixIcon: const Icon(Icons.motion_photos_pause_rounded,
                  size: 30, color: AppColors.blue),
              controller: depositController,
            ),
            SizedBox(height: 20.h),
            Center(
              child: CustomButton(
                text: "Next",
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }

                  final request = AddPriceRequestModel(
                    cakePrice: cakePriceController.text.isEmpty
                        ? '0'
                        : cakePriceController.text,
                    deposit: depositController.text.isEmpty
                        ? '0'
                        : depositController.text,
                    deliveryPrice: deliveryPriceController.text,
                    flowerPrice: flowerPriceController.text.isEmpty
                        ? '0'
                        : flowerPriceController.text,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
