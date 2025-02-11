import 'package:charlot/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyOrderImageWidget extends StatelessWidget {
  const ReadyOrderImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      height: 318.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color(0xffF4EDE7),
      ),
      child: Image.asset(
        AppAssets.cake2,
        height: 200.h,
        width: 200.w,
      ),
    );
  }
}
