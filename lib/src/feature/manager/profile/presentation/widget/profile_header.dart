import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {super.key, required this.onPressed, required this.title, this.onPressedEdit});
  final void Function()? onPressed;
  final void Function()? onPressedEdit;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: AppStyles.s16.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        TextButton(
            onPressed: onPressedEdit,
            
            child: Text(
              AppStrings.edit.tr(),
              style: AppStyles.s14.copyWith(
                  decoration: TextDecoration.underline,
                  
                  color: AppColors.primaryColor),
            ))
      ],
    );
  }
}
