import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_details_header.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/componant/sales_order_details_content.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/cubit/sales_order_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesOrderDetailsView extends StatelessWidget {
  const SalesOrderDetailsView({super.key, required this.orderId});

  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyForSelectTap,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderDetailsHeader(
              title: "Order Details",
              onBackPressed: () => Navigator.pop(context),
            ),
            SizedBox(height: 16.h),
            const SalesOrderDetailsContent(),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
