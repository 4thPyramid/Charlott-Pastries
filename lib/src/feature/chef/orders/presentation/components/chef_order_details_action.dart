import 'package:charlot/core/routes/router_names.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../manager/accept_employee/presentation/widgets/accept_and_refuse_button.dart';
import '../logic/order_status_cubit.dart';
import '../logic/order_status_state.dart';

class ChefOrderDetailsActions extends StatelessWidget {
  final String orderStatus;
  final int orderId;

  const ChefOrderDetailsActions({
    super.key,
    required this.orderStatus,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderStatusCubit, OrderStatusState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message) {
            showSnackBar(context, message);
            context.push(RouterNames.chefBottomNavigationBarRoot);
            // context.go(RouterNames.chefBottomNavigationBarRoot);
          },
          error: (error) => showSnackBar(context, error.message),
        );
      },
      child: _buildActionsByStatus(context),
    );
  }

  Widget _buildActionsByStatus(BuildContext context) {
    switch (orderStatus) {
      case "inprogress":
        return Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              CustomButton(
                  text: AppStrings.readyForDeliver.tr(),
                  textStyle: AppStyles.s14.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  onPressed: () =>
                      context.read<OrderStatusCubit>().doneOrder(orderId)),
            ],
          ),
        );

      case "chef waiting":
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AcceptAndRefuseButton(
              text: AppStrings.accept.tr(),
              backgroundColor: AppColors.green,
              onPressed: () =>
                  context.read<OrderStatusCubit>().acceptOrder(orderId),
            ),
            SizedBox(width: 16.w),
            AcceptAndRefuseButton(
                text: AppStrings.ignore.tr(),
                backgroundColor: AppColors.red,
                onPressed: () => context.pop()
                // context.read<OrderStatusCubit>().declineOrder(orderId),
                ),
          ],
        );

      case "chef approved":
        return Align(
          alignment: Alignment.center,
          child: CustomButton(
            text: AppStrings.startWork.tr(),
            textStyle: AppStyles.s14.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: () =>
                context.read<OrderStatusCubit>().startOrder(orderId),
          ),
        );

      default:
        return SizedBox(height: 12.h);
    }
  }
}

// Helper function for showing SnackBar
void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}
