import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/category_card_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/sales_home_new_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SalesHomeView extends StatelessWidget {
  const SalesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              const HomeAppBar(
                name: 'محمد عمرو',
              ),
              SizedBox(height: 20.h),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "طلب جاهز للتوصيل",
                  style: AppStyles.s20.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SalesHomeNewOrders(),
              SizedBox(height: 20.h),
              const OrdersCategoryRow(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(RouterNames.addOrder);
        },
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }
}

class OrdersCategoryRow extends StatelessWidget {
  const OrdersCategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى الجديد ',
          subTitle: '50 من الطلبات الجديده',
          image: AppAssets.category1,
        ),
        SizedBox(width: 6.w),
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى قيد التنفيذ ',
          subTitle: '50 من الطلبات قيد التنفيذ',
          image: AppAssets.category2,
        ),
        SizedBox(width: 6.w),
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى المكتمل ',
          subTitle: '50 من الطلبات المكتمله',
          image: AppAssets.category3,
        ),
      ],
    );
  }
}
