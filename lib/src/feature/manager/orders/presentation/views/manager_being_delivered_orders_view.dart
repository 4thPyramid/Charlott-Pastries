import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/with_delivery_orders_list_view.dart';

class ManagerBeingDeliveredOrdersView extends StatelessWidget {
  const ManagerBeingDeliveredOrdersView({super.key});

 @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.orderBeingDeliver.tr(),
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
           const WithDeliveryOrdersListView ()
          ],
        ));
  }
}


