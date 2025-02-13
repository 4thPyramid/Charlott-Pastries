import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';

class FirstAndLastNameRow extends StatelessWidget {
final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const FirstAndLastNameRow({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
          child: AuthTextFieldWidget(
            isPassword: false,
             controller: firstNameController,
            hintText: AppStrings.firstName.tr(),
            titleOfField:  AppStrings.firstName.tr(),
            prefixIcon: Icons.edit_note,
          ),
        ),
        SizedBox(width: 5.w),
         Expanded(
          child: AuthTextFieldWidget(
            isPassword: false,
              controller: lastNameController,
            hintText:  AppStrings.lastName.tr(),
            titleOfField:  AppStrings.lastName.tr(),
            prefixIcon: Icons.edit_note,
          ),
        ),
      ],
    );
  }
}
