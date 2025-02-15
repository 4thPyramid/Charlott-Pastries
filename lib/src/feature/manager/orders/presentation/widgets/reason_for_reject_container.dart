import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../generated/app_strings.g.dart';
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
          child:  OrderDetailsSectionsTitleWidget(
            title: AppStrings.reasonForRejection.tr(),
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
