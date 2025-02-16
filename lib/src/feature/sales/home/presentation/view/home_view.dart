import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../componant/order_category_row.dart';

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
              SizedBox(height: 30.h),
              const HomeAppBar(),
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.readyForDelivery.tr(),
                  style: AppStyles.s20.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
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
