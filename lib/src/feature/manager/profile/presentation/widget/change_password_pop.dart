import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/main_function.dart';
import '../../../../../../generated/app_strings.g.dart';

changePasswordPop(BuildContext context) {
  customAlertDialog(
    marginHPadding: 20.h,
    marginVPadding: 20.h,
    hPadding: 12.w,
    vPadding: 12.h,
    context: context,
    content: Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0.h),
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.currentPassword.tr(),
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: AppStrings.newPassword.tr(),
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: AppStrings.confirmNewPassword.tr(),
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
            suffixIcon: const Icon(Icons.remove_red_eye),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                width: 150.w,
                backgroundColor: AppColors.errorColor,
                text: AppStrings.save.tr(),
                textStyle: AppStyles.s12.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                width: 150.w,
                text: AppStrings.cancel.tr(),
                backgroundColor: AppColors.white,
                textStyle: AppStyles.s12.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w700,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    ),
  );
}
