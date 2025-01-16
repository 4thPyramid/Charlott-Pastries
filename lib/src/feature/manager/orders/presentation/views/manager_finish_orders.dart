import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../components/complete_orders_list_view.dart';

class ManagerFinishOrders extends StatelessWidget {
  const ManagerFinishOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: "طلبات منتهيه ",
              iconleft: Icons.arrow_back_ios,
            ),
            CompleteOrdersListView()
          ],
        ));
  }
}
//! still need to add the complete orders list view and navigation