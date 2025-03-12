import 'package:charlot/core/common/functions/date_time_formate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';

class OrdersTapsItemCardWidget extends StatelessWidget {
  const OrdersTapsItemCardWidget({
    super.key,
    required this.orderId,
    required this.time,
    required this.onPressed,
  });

  final int orderId;
  final String time;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${AppStrings.order.tr()} #$orderId',
        style: AppStyles.s16,
      ),
      subtitle: Text(
        formatDateFunction(time),
        style: AppStyles.s14.copyWith(
          color: AppColors.whiteGreyForText,
        ),
      ),
      trailing: CustomButton(
          height: 30.h,
          width: 120.w,
          text: AppStrings.showdetails.tr(),
          textStyle: AppStyles.s16.copyWith(
            color: AppColors.primaryColor,
          ),
          backgroundColor: AppColors.scaffoldColor,
          onPressed: onPressed),
    );
  }
}
