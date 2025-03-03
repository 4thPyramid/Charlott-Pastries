
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';

class ConnectWithChefCard extends StatelessWidget {
  const ConnectWithChefCard({super.key, required this.email, required this.phone,});
  final String email;
final String phone;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          ConnectWithChefRow(icon: Icons.email_outlined, title: email),
          ConnectWithChefRow(icon: Icons.phone, title: phone),

        ],
      ),
    );

           
  }
}

class ConnectWithChefRow extends StatelessWidget {
  const ConnectWithChefRow({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.greyForText),
      title: Text(
        title,
        style: AppStyles.s14.copyWith(
          color: AppColors.greyForText,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
