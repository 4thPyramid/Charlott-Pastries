import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';

class ReturnedOrdersListView extends StatelessWidget {
  const ReturnedOrdersListView({super.key});

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
                pageTitle:  AppStrings.returnOrder,
                orderStatusColor: AppColors.red, 
                orderStatus: 'طلب مرتجع',
              ),
            );
          },
        ),
      ),
    );
  }
}
