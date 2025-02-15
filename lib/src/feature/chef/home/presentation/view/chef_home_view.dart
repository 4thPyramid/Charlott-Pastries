import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/chef/home/presentation/component/order_list_view_section.dart';
import 'package:charlot/src/feature/sales/home/presentation/componant/banner_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../widget/chef_home_app_bar.dart';

class ChefHomeView extends StatelessWidget {
  const ChefHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              const ChefHomeAppBar(),
              SizedBox(height: 20.h),
              const BannerSection(),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.newOrders.tr(),
                  style: AppStyles.s20.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const OrderListViewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
