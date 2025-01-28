import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/common/widgets/shared_order_item_card.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';

class ManagerBeingDeliveredOrdersView extends StatelessWidget {
  const ManagerBeingDeliveredOrdersView({super.key});

 @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: Column(
          children: [
            CustomAppBar(
              title: AppStrings.orderBeingDeliver,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
           const ManagerBeingDeliveredListView ()
          ],
        ));
  }
}

class ManagerBeingDeliveredListView extends StatelessWidget {
  const ManagerBeingDeliveredListView({super.key});


  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const SharedOrderItemCard(
                id: 0,
                pageTitle:  AppStrings.beingDeliverOrder,
                orderStatusColor: AppColors.red, 
                orderStatus: AppStrings.beingDeliverOrder,
              ),
            );
          },
        ),
      ),
    );
  }
}

