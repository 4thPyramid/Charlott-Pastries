import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OrderDetailsSectionsTitleWidget extends StatelessWidget {
  const OrderDetailsSectionsTitleWidget({
    super.key,
    required this.title,
    this.subtitle,
  });
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.s16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          subtitle ?? "",
          style: AppStyles.s12.copyWith(color: AppColors.green),
        ),
      ],
    );
  }
}
