import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/home/presentation/componant/orders_grid_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/componant/redy_order_componant.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/grid_view_item.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            SizedBox(height: 70.h),
            const HomeAppBar(name: '',),
            SizedBox(height: 20.h),
            const HomeIntroImage(),
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
            const RedyOrderComponant(),
            OrdersGridView(),
          ],
        ),
      ),
    ));
  }
}
