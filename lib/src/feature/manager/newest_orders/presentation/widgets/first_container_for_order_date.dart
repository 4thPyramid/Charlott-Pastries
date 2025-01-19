import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import 'newest_order_build_info_field.dart';

class FirstContainerForOrderDate extends StatelessWidget {
  const FirstContainerForOrderDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 1),
              blurRadius: 1,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newestOrderBuildInfoField("الطلب رقم 20", 'طلب جديد'),
          newestOrderBuildInfoField("تاريخ الطلب", '2025/1/16'),
        ],
      ),
    );
  }
}
