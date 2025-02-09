import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/home/presentation/logic/cubit/sales_home_cubit.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/category_card_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/sales_home_new_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrdersCategoryRow extends StatelessWidget {
  const OrdersCategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesHomeCubit, SalesHomeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          failure: (error) => Text(error.message),
          statsLoaded: (stats) => Column(
            children: [
              SalesHomeNewOrders(number: stats.newOrder),
              SizedBox(height: 20.h),
              Row(
                children: [
                  CategoryCardWidget(
                    onTap: () {
                      context.go(RouterNames.newOrders);
                    },
                    title: 'اجمالى الجديد ',
                    subTitle: ' ${stats.newOrder} من الطلبات الجديده',
                    image: AppAssets.category1,
                  ),
                  SizedBox(width: 6.w),
                  CategoryCardWidget(
                    onTap: () {
                      context.go(RouterNames.incompleatedOrders);
                    },
                    title: 'اجمالى قيد التنفيذ ',
                    subTitle:
                        ' ${stats.orderInProgress} من الطلبات قيد التنفيذ',
                    image: AppAssets.category2,
                  ),
                  SizedBox(width: 6.w),
                  CategoryCardWidget(
                    onTap: () {
                      context.go(RouterNames.compleatedOrders);
                    },
                    title: 'اجمالى المكتمل ',
                    subTitle: ' ${stats.completedOrder} من الطلبات المكتمله',
                    image: AppAssets.category3,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
