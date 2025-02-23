import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/finish_order_list_view.dart';

class ManagerFinishOrders extends StatelessWidget {
  const ManagerFinishOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.orderEnded,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
            const Expanded(child: FinishOrderListView())
          ],
        ));
  }
}
