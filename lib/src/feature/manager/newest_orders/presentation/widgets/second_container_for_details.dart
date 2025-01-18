
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import 'newest_order_build_info_field.dart';

class SecondContainerForDetails extends StatelessWidget {
  const SecondContainerForDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
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
          newestOrderBuildInfoField('نوع الطلب', '#حلويات غربيه'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          newestOrderBuildInfoField(
              'الطلب', 'تورته عيد ميلاد بالشيكولاته دورين'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          newestOrderBuildInfoField('الكميه', 'عدد 1 من الطلب'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          newestOrderBuildInfoField('السعر', '800 ج'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          SizedBox(height: 16.h),
          Text('ملاحظات',
              style: TextStyle(color: AppColors.blueBlack, fontSize: 14.sp)),
          SizedBox(height: 16.h),
          Container(
            width: double.infinity,
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.primaryColor, width: 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              'لا يوجد ملاحظات',
              style: TextStyle(color: AppColors.grey, fontSize: 14.sp),
            ),
          )
        ],
      ),
    );
  }
}
