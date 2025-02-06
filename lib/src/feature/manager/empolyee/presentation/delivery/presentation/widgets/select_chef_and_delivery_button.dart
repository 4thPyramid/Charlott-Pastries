import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../../../core/routes/router_names.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../../newest_orders/presentation/widgets/accept_order_pop.dart';
import '../../../logic/select/select_chef_delivery_cubit.dart';
import '../../../logic/select/select_chef_delivery_state.dart';

class SelectChefOrDeliveryButton extends StatelessWidget {
  const SelectChefOrDeliveryButton({
    super.key,
    required this.id,
    required this.orderId,
    required this.isChef,
  });

  final int id;
  final int orderId;
  final bool isChef;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectChefAndDeliveryCubit, SelectChefAndDeliveryState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (success) {
            acceptOrderPop(
              context,
              title: isChef ? 'تم ارسال الطلب للشيف' : 'تم ارسال الطلب للمندوب',
              buttonTitle: 'رجوع',
              onPressed: () => context.go(
                RouterNames.managerBottomNavigationBarRoot,
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
            text: isChef ? 'ارسال الطلب للشيف' : 'ارسال الطلب للمندوب',
           isLoading: state is SelectChefAndDeliveryLoading,
             textStyle: AppStyles.s14.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
            onPressed: () {
              if (isChef) {
                context
                    .read<SelectChefAndDeliveryCubit>()
                    .selectChef(id, orderId);
              } else {
                context
                    .read<SelectChefAndDeliveryCubit>()
                    .selectDelivery(id, orderId);
              }
            },
          ),
        );
      },
    );
  }
}