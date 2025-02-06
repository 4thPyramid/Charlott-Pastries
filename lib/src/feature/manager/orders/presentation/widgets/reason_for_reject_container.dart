import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../orderDetails/presentation/widgets/order_details_section_title.dart';

class ReasonForRejection extends StatelessWidget {
  const ReasonForRejection({super.key, required this.reason});
  final String reason;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 16.w,
          ),
          child: const OrderDetailsSectionsTitleWidget(
            title: 'سبب الرفض ',
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          width: 353.w,
          // height: 120.h,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Text(
            reason,
            style: TextStyle(fontSize: 12.sp),
          ),
        )
      ],
    );
  }
}
