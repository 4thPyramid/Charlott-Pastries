import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/compleated_order_tap.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/new_order_tap.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/pending_order_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllOrdersView extends StatelessWidget {
  const AllOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              const CustomAppBar(title: "الطلبات"),
              Container(
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TabBar(
                    labelPadding: const EdgeInsets.all(8),
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
                    tabs: const [
                      Tab(text: "جديد"),
                      Tab(text: "قيد التنفيذ"),
                      Tab(text: "مكتمل"),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    NewOrderTap(),
                    PendingOrderTap(),
                    CompleatedOrderTap(),
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
