import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            hintText: "ادخل اسمك ",
            titleOfField: "الاسم الاول",
            prefixIcon: Icons.edit_note,
          ),
        ),
        SizedBox(width: 5.w),
         Expanded(
          child: AuthTextFieldWidget(
            isPassword: false,
              controller: lastNameController,
            hintText: "اسم العائلة",
            titleOfField: "الاسم الاخير",
            prefixIcon: Icons.edit_note,
          ),
        ),
      ],
    );
  }
}
