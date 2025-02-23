import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/complete_orders_list_view.dart';

class ManagerCompletedOrders extends StatelessWidget {
  const ManagerCompletedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.orderCompleted,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () => context.pop(),
            ),
            const Expanded(child: ManagerCompleteOrdersListView())
          ],
        ));
  }
}
