import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/componant/sales_order_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesOrderDetailsView extends StatelessWidget {
  const SalesOrderDetailsView({
    super.key,
    required this.orderId,
  });

  final int orderId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyForSelectTap,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SalesOrderDetailsContent(
              orderId: orderId,
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
