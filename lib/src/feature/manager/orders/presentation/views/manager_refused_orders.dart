import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/refused_order_list_view.dart';

class ManagerRefusedOrders extends StatelessWidget {
  const ManagerRefusedOrders({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.refusedOrder.tr(),
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
            const RefusedOrderListView()
          ],
        ));
  }
}
