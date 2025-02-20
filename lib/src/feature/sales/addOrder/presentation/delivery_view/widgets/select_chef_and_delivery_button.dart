import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../../../core/routes/router_names.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../../manager/empolyee/presentation/logic/select/select_chef_delivery_state.dart';
import '../../../../../manager/newest_orders/presentation/widgets/accept_order_pop.dart';
import '../../logic/delivery/select_delivery/select_delivery_cubit.dart';
import '../../logic/delivery/select_delivery/select_delivery_state.dart';

class SalesSelectDeliveryButton extends StatelessWidget {
  const SalesSelectDeliveryButton({
    super.key,
    required this.id,
    required this.orderId,
  });

  final int id;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SalesSelectDeliveryCubit, SelectDeliveryState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (success) {
            acceptOrderPop(
              context,
              title: 'تم ارسال الطلب للمندوب',
              buttonTitle: 'رجوع',
              onPressed: () => context.go(
                RouterNames.salesBottomNavigationBarRoot,
              ),
            );
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.message)),
            );
          },
        );
      },
      builder: (context, state) {
        return Align(
          child: CustomButton(
            text: 'ارسال الطلب للمندوب',
            isLoading: state is SelectChefAndDeliveryLoading,
            textStyle: AppStyles.s14.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: () {
              context
                  .read<SalesSelectDeliveryCubit>()
                  .selectDelivery(id,1 ,orderId);
            },
          ),
        );
      },
    );
  }
}
