import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestTypeDropdown extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;
  final String hintText;
  final FormFieldValidator<String>? validator;

   const RequestTypeDropdown({
    super.key,
    required this.value,
    required this.onChanged,
    this.hintText = 'Choose Order Type',
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'orderType'.tr(),
          style: AppStyles.s14.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          validator: validator,
          hint: Text(hintText, style: AppStyles.s14),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.grey,
          ),
          dropdownColor: AppColors.white,
          focusColor: AppColors.primaryColor,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.list, color: AppColors.blue),
            filled: true,
            fillColor: AppColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppColors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppColors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppColors.grey),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
          items:  [
            DropdownMenuItem(
              value: 'cake'.tr(),
              child: Text('cake'.tr()),
            ),
            DropdownMenuItem(
              value: 'flowers'.tr(),
              child: Text('flowers'.tr()),
            ),
            DropdownMenuItem(
              value: 'cakeAndFlowers'.tr(),
              child: Text('cakeAndFlowers'.tr()),
            ),
          ],
        ),
      ],
    );
  }
}
