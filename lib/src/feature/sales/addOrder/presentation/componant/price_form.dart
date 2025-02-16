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
  final TextEditingController totalPriceController = TextEditingController();
  final TextEditingController depositController = TextEditingController();
  final TextEditingController deliveryPriceController = TextEditingController();
  final TextEditingController remainingPriceController =
      TextEditingController();
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
          Text("سعر التوصيل",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700, 
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: const Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
            controller: deliveryPriceController,
          ),
          SizedBox(height: 10.h),
          Text("سعر الكيك",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: const Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
            controller: cakePriceController,
          ),
          Text("سعر الورد",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: const Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
            controller: flowerPriceController,
          ),
          Text("المبلغ المتبقي",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: const Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
            controller: remainingPriceController,
          ),
          SizedBox(height: 10.h),
          Center(
            child: BlocListener<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (message) {
                    context.go("${RouterNames.mapPicker}/$orderId");
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
              child: BlocBuilder<AddOrderCubit, AddOrderState>(
                builder: (context, state) {
                  return CustomButton(
                    text: "التالي",
                    onPressed: () {
                      final request = AddPriceRequestModel(
                        price: cakePriceController.text,
                        deposit: depositController.text,
                        remaining: remainingPriceController.text,
                        deliveryPrice: deliveryPriceController.text,
                        totalPrice: totalPriceController.text,
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
