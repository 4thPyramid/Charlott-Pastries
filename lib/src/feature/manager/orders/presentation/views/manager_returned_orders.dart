import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../components/returned_orders_list_view.dart';

class ManagerReturnedOrders extends StatelessWidget {
  const ManagerReturnedOrders({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.returnOrder,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
            const ReturnedOrdersListView()
          ],
        ));
  }
}
