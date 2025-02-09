import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.type,
    required this.status,
    required this.id,
  });
  final int id;
  final String imageUrl;
  final String type;
  final String title;
  final String time;
  final String status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     
        context.push(RouterNames.chefOrdersDetailsView, extra: {
          'title': title,
          "orderId": id,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SizedBox(
          height: 54.h,
          width: 354.w,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
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
                            style:
                                AppStyles.s14.copyWith(color: AppColors.grey)),
                      ],
                    ),
                  ),
                  Text(time, style: AppStyles.s12),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
