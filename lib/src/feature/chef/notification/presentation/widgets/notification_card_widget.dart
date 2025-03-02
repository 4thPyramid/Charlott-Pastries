import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.type,
    required this.id,
  });
  final String imageUrl;
  final String type;
  final String title;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      //    onTap: () {
      // context.push(RouterNames.chefOrdersDetailsView, extra: {
      //   'title': title,
      //   "orderId": id,
      // });
      //  },
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.greyForSelectTap,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 54.h,
            width: 54.w,
          ),
        ),
        
        title: Text(
         " $title   $id",
          overflow: TextOverflow.ellipsis,
          style: AppStyles.s14.copyWith(color: Colors.black),
        ),
        subtitle: Text(type,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.s14.copyWith(color: AppColors.greyForText)),

        // Text(time, style: AppStyles.s12),
      ),
    );
  }
}
