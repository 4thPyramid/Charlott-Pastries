import 'package:charlot/src/feature/manager/home/presentation/widgets/custom_title.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/new_orders_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefHomeView extends StatelessWidget {
  const ChefHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),
              const HomeAppBar(name: '', ),
              SizedBox(height: 40.h),
              const HomeIntroImage(),
              SizedBox(height: 50.h),
              const CustomTitle(title: "طلبات جديده"),
               SizedBox(height: 20.h),
               const NewOrdersListView(),
            ],
          ),
        ),
      ),
    );
  }
}
