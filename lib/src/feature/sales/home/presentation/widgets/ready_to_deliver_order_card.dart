import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyToDeliverOrderCard extends StatelessWidget {
  const ReadyToDeliverOrderCard(
      {super.key,
      required this.orderName,
      required this.orderType,
      required this.teamWorkImage,
      required this.data});
  final String orderName;
  final String orderType;
  final String teamWorkImage;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 353.w,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  "حلويات غربيه",
                  style: AppStyles.s14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "تورتة عيد الميلاد",
                  style: AppStyles.s14,
                ),
                SizedBox(height: 20.h),
                const Text("فريق العمل"),
                SizedBox(height: 8.h),
                const AppImageView(
                  AppAssets.logo,
                  height: 40,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("تاريخ التسليم"),
                SizedBox(height: 8.h),
                Row(children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.darkTextGrey,
                  ),
                  Text(
                    "11/11/2023",
                    style: AppStyles.s14,
                  ),
                ]),
                SizedBox(height: 8.h),
                CustomButton(
                    width: 130.w,
                    height: 30.h,
                    text: "عرض التفاصيل",
                    onPressed: () {}),
                SizedBox(height: 10.h),
              ],
            ),
            SizedBox(width: 30.h),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const AppImageView(AppAssets.logo, height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
