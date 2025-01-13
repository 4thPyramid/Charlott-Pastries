import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirestAndLastNameRow extends StatelessWidget {
  const FirestAndLastNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: AuthTextFieldWidget(
            isPassword: false,
            hintText: "ادخل اسمك ",
            titelOfField: "الاسم الاول",
            prefixIcon: Icons.edit_note,
          ),
        ),
        SizedBox(width: 5.w),
        const Expanded(
          child: AuthTextFieldWidget(
            isPassword: false,
            hintText: "اسم العائلة",
            titelOfField: "الاسم الاخير",
            prefixIcon: Icons.edit_note,
          ),
        ),
      ],
    );
  }
}
