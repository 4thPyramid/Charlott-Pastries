import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottonsWidget extends StatelessWidget {
  const BottonsWidget({
    super.key,
    required this.doneOnPressed,
    required this.problemOnPressed,
  });

  final VoidCallback doneOnPressed;
  final VoidCallback problemOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            height: 40.h,
            width: 220.w,
            text: "تم توصيل الطلب",
            onPressed: doneOnPressed,
          ),
        ),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            height: 40.h,
            width: 220.w,
            text: "الابلاغ عن المشكلة",
            onPressed: problemOnPressed,
          ),
        ),
      ],
    );
  }
}
