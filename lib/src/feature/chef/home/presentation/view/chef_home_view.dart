
import 'package:charlot/src/feature/chef/home/presentation/component/order_list_view_section.dart';
import 'package:charlot/src/feature/sales/home/presentation/componant/banner_section.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              SizedBox(height: 70.h),
              const HomeAppBar(
                name: 'محمد عمرو',
              ),
              SizedBox(height: 20.h),
            const BannerSection(),
              SizedBox(height: 20.h),
              const OrderListViewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
