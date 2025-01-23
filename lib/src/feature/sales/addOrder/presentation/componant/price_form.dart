import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceForm extends StatelessWidget {
  const PriceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("اجمالي السعر",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
          ),
          SizedBox(height: 10.h),
          Text("العربون",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
          ),
          SizedBox(height: 10.h),
          Text("المبلغ المتبقي",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.green),
          ),
          SizedBox(height: 10.h),
          Center(child: CustomButton(text: "التالي", onPressed: () {})),
        ],
      ),
    );
  }
}
