import 'package:charlot/src/feature/manager/newest_orders/presentation/views/newest_order_list_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheafHomeView extends StatelessWidget {
  const CheafHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 70.h),
              const HomeAppBar(name: '',),
              SizedBox(height: 20.h),
              const HomeIntroImage(),
              SizedBox(height: 20.h),
              const NewestOrderListView(),
            ],
          ),
        ),
      ),
    );
  }
}
