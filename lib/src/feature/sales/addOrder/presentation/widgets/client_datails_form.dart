import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientDatailsForm extends StatelessWidget {
  const ClientDatailsForm({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.onPressed,
    required this.addressController,
  });
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("clientName".tr(),
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'enterClientName'.tr(),
            controller: nameController,
            prefixIcon: const Icon(Icons.edit_note_outlined,
                size: 30, color: AppColors.blue),
          ),
          SizedBox(height: 10.h),
          Text("phoneNumber".tr(),
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'enterClientPhoneNumber'.tr(),
            controller: phoneController,
            prefixIcon: const Icon(
              Icons.phone,
              size: 30,
              color: AppColors.orange,
            ),
          ),
          SizedBox(height: 10.h),
          Text("address".tr(),
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'enterTheAdressInDetails'.tr(),
            controller: addressController,
            prefixIcon: const Icon(
              Icons.location_on_outlined,
              size: 30,
              color: AppColors.red,
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: CustomButton(text: "next".tr(), onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
