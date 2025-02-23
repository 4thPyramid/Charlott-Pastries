import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PriceForm extends StatelessWidget {
  PriceForm({super.key, required this.orderId, required this.isSameday});
  final TextEditingController depositController = TextEditingController();
  final TextEditingController deliveryPriceController = TextEditingController();
  final TextEditingController cakePriceController = TextEditingController();
  final TextEditingController flowerPriceController = TextEditingController();
 

  final int orderId;
  final String isSameday;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Text("Cake Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the cake price',
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter the cake price'
                : null,
            prefixIcon:
                const Icon(Icons.cake, size: 30, color: AppColors.primaryColor),
            controller: cakePriceController,
          ),
          SizedBox(height: 10.h),
        if (isSameday == "false") ...[
          Text("Flower Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the flower price',
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter the flower price'
                : null,
            prefixIcon:
                const Icon(Icons.money, size: 30, color: AppColors.green),
            controller: flowerPriceController,
          ),
        ] else SizedBox(height: 10.h),
          SizedBox(height: 10.h),
          Text("Delivery Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
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
            hintText: 'Enter the deposit if it exists',
            validator: (value) => null,
            prefixIcon: const Icon(Icons.motion_photos_pause_rounded,
                size: 30, color: AppColors.blue),
            controller: depositController,
          ),
          SizedBox(height: 20.h),
          Center(
            child: BlocListener<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (message, _) {
                    context
                        .push("${RouterNames.mapPicker}/$orderId/$isSameday");
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
              child: BlocBuilder<AddOrderCubit, AddOrderState>(
                builder: (context, state) {
                  return CustomButton(
                    text: "Next",
                    onPressed: () {
                      final request = AddPriceRequestModel(
                        cakePrice: cakePriceController.text,
                        deposit: depositController.text,
                        deliveryPrice: deliveryPriceController.text,
                        flowerPrice: flowerPriceController.text,
                      );
                      context
                          .read<AddOrderCubit>()
                          .addOrderPrice(request, orderId);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
