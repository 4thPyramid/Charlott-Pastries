import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/manager_assigned_order_list_view.dart';

class ManagerAssignedOrders extends StatelessWidget {
  const ManagerAssignedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.waitingOrders.tr(),
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () => context.pop(),
            ),
            const ManagerAssignedOrdersListView()
          ],
        ));
  }
}
