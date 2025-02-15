import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/not_started_order_list_view_tab.dart';
import '../components/completed_order_list_view_tab.dart';
import '../components/pending_order_list_view_tab.dart';

class ChefOrdersView extends StatelessWidget {
  const ChefOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
               CustomAppBar(title: AppStrings.orders.tr()),
              Container(
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: TabBar(
                    labelPadding: EdgeInsets.all(8.r),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: -20),
                    dividerColor: AppColors.primaryColor,
                    dividerHeight: 0,
                    labelColor: AppColors.primaryColor,
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: const Border.symmetric(),
                      color: AppColors.greyForSelectTap,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    tabs:  [
                      Tab(text: AppStrings.notStarted.tr()),
                      Tab(text: AppStrings.pending.tr()),
                      Tab(text: AppStrings.completed.tr()),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    NotStartedOrderListViewTab(),
                    PendingOrderListViewTab(),
                    CompletedOrderListViewTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
