import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class RefusedOrderCard extends StatelessWidget {
  const RefusedOrderCard({super.key, required this.imageUrl, required this.type, required this.title, required this.time});
final String imageUrl;
  final String type;
  final String title;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 54.h,
        width: 354.w,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
                height: 54.h,
                width: 54.w,
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    text: type,
                    style: AppStyles.s14.copyWith(color: Colors.black),
                    children: [
                      TextSpan(
                          text: title,
                          style: AppStyles.s14.copyWith(color: AppColors.greyForText)),
                    ],
                  ),
                ),
                Text(time, style: AppStyles.s12.copyWith(
                    color: AppColors.greyForText,
                    fontWeight: FontWeight.w400
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}