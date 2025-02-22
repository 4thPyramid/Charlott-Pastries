import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../../../../core/routes/router_names.dart';
import '../../../../../../../generated/app_strings.g.dart';
import '../../logic/delivery/select_delivery/select_delivery_cubit.dart';
import '../../logic/delivery/select_delivery/select_delivery_state.dart';
import 'pop_to_choice_branch.dart';

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
            context.go(
              RouterNames.salesBottomNavigationBarRoot,
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
            text: AppStrings.sendOrderToDelivery.tr(),
            textStyle: AppStyles.s14.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: () async {
              final branchId = await popToChoiceBranch(
                context,
                title: AppStrings.choiceBranch.tr(),
                buttonTitle: AppStrings.send.tr(),
                selectedBranch: null,
              );
              if (branchId != null) {
                context.read<SalesSelectDeliveryCubit>().selectDelivery(
                      id,
                      branchId,
                      orderId,
                    );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No branch selected')),
                );
              }
            },
          ),
        );
      },
    );
  }
}
