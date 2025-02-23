import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/manager_not_assign_order_list_view.dart';

class ManagerNotAssignOrders extends StatelessWidget {
  const ManagerNotAssignOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.notAssignOrders,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () => context.pop(),
            ),
            const Expanded(child: ManagerNotAssignOrdersListView())
          ],
        ));
  }
}
