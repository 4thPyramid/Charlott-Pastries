import 'package:charlot/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../components/complete_orders_list_view.dart';

class ManagerCompleatedOrders extends StatelessWidget {
  const ManagerCompleatedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: "الطلبات المكتملة",
              iconleft: Icons.arrow_back_ios,
              onPressedLeft: () => context.pop(),
            ),
            const CompleteOrdersListView()
          ],
        ));
  }
}
