import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/requset_type_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PriceForm extends StatelessWidget {
  PriceForm({super.key, required this.orderId});
  final TextEditingController depositController = TextEditingController();
  final TextEditingController deliveryPriceController = TextEditingController();

  final TextEditingController cakePriceController = TextEditingController();
  final TextEditingController flowerPriceController = TextEditingController();

  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Text("Cake Price",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: ' inter the cake price',
            prefixIcon: const Icon(
              Icons.cake,
              size: 30,
              color: AppColors.primaryColor,
            ),
            controller: cakePriceController,
          ),
          SizedBox(height: 10.h),
          Text("Flower Price",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'inter the flower price',
            prefixIcon:
                const Icon(Icons.money, size: 30, color: AppColors.green),
            controller: flowerPriceController,
          ),
          Text("Delivery Price",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'inter the delivery price',
            prefixIcon: const Icon(
              Icons.attach_money_rounded,
              size: 30,
              color: AppColors.orange,
            ),
            controller: deliveryPriceController,
          ),
          Text("Deposit ",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'inter the deposit if it is exist',
            prefixIcon: const Icon(
              Icons.motion_photos_pause_rounded,
              size: 30,
              color: AppColors.blue,
            ),
            controller: depositController,
          ),
          SizedBox(height: 10.h),
          Center(
            child: BlocListener<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (message, _) {
                    context.go("${RouterNames.mapPicker}/$orderId");
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
                        price: cakePriceController.text,
                        deposit: depositController.text,
                        remaining: "",
                        deliveryPrice: deliveryPriceController.text,
                        totalPrice: "",
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
          )
        ],
      ),
    );
  }
}
