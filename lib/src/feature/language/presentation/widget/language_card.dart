import 'package:charlot/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class LanguageCard extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String language;
  final bool isSelected;

  const LanguageCard({
    super.key,
    required this.onTap,
    required this.icon,
    required this.language,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color:
              isSelected ? AppColors.primaryColor.withAlpha(40) : AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.greyForText : AppColors.grey,
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              language,
              style: isSelected
                  ? AppStyles.s18
                  : AppStyles.s18.copyWith(color: AppColors.greyForText),
              textAlign: TextAlign.center,
            ),
            SizedBox(width: 30.w),
            Text(icon, style: AppStyles.s16),
          ],
        ),
      ),
    );
  }
}
