import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllOrdersView extends StatelessWidget {
  const AllOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                      Tab(text: "ملغي"),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    OrdersListviewForTaps(),
                    OrdersListviewForTaps(),
                    OrdersListviewForTaps(),
                    OrdersListviewForTaps(),
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

class OrdersListviewForTaps extends StatelessWidget {
  const OrdersListviewForTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListTile(
                title: Text(
                  'طلب #1234',
                  style: AppStyles.s16,
                ),
                subtitle: Text('2:35 PM · عناصر 3',
                    style: AppStyles.s14.copyWith(
                      color: AppColors.whiteGreyForText,
                    )),
                trailing: CustomButton(
                  height: 30.h,
                  width: 120.w,
                  text: "عرض التفاصيل",
                  textStyle:
                      AppStyles.s16.copyWith(color: AppColors.primaryColor),
                  backgroundColor: AppColors.scaffoldColor,
                  onPressed: () {
                    context.push(RouterNames.ordersDetails, extra: {
                      'from': "allOrders",
                      'title': 'تفاصيل الطلب',
                      'orderId': 1,
                    });
                  },
                ),
              ));
        },
      ),
    );
  }
}
