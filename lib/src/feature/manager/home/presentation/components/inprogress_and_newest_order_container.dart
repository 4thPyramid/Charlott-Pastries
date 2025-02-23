import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';
import 'newest_order_list_view.dart';
import '../widgets/custom_title.dart';
import 'order_in_progress_list.dart';

class InProgressAndNewestOrderContainer extends StatelessWidget {
  const InProgressAndNewestOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          CustomTitle(
            title: AppStrings.ordersInProgress.tr(),
          ),
          SizedBox(height: 20.h),
          const OrdersInProgressList(),
          SizedBox(height: 20.h),
          CustomTitle(title: AppStrings.newestOrders.tr()),
          SizedBox(height: 20.h),
          const NewestOrderListView()
        ],
      ),
    );
  }
}
