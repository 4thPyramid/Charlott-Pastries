import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../core/routes/router_names.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../manager/accept_employee/presentation/widgets/accept_and_refuse_button.dart';
import '../logic/accept_order/accept_order_cubit.dart';
import '../logic/accept_order/accept_order_state.dart';
import '../view/show_pop_to_choice_chef.dart';

class OrderDetailsActions extends StatelessWidget {
  final String orderStatus;
  final int orderId;

  const OrderDetailsActions({
    super.key,
    required this.orderStatus,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    if (orderStatus == "تم التجهيز") {
      return Align(
        alignment: Alignment.bottomCenter,
        child: CustomButton(
          text: AppStrings.selectDelivery,
          textStyle: AppStyles.s14.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
          onPressed: () {
            context.push(RouterNames.selectDeliveryBoy, extra: {
              'orderId': orderId,
            });
          },
        ),
      );
    } else if (orderStatus == "جاري الاستلام" || orderStatus ==  "وافق المدير") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<AcceptOrderCubit, AcceptOrderState>(
            listener: (context, state) {
              if (state is AcceptOrderSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.ordersResponse.message),
                    backgroundColor: Colors.green,
                  ),
                );
                showPopToChoiceChef(context, orderId);
              } else if (state is AcceptOrderFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage.message),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              return AcceptAndRefuseButton(
                text: AppStrings.accept,
                backgroundColor: AppColors.green,
                onPressed: () {
                  context.read<AcceptOrderCubit>().call(orderId);
                },
              );
            },
          ),
          SizedBox(width: 16.w),
          AcceptAndRefuseButton(
            text: AppStrings.ignore,
            backgroundColor: AppColors.red,
            onPressed: () {
              context.pop();
            },
          ),
        ],
      );
    } else {
      return SizedBox(height: 16.h);
    }
  }
}
