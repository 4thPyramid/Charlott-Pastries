import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/custom_sucess_pop.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatelessWidget {
  ResetPasswordForm({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AuthTextFieldWidget(
            titleOfField: "كلمة المرور الجديدة",
            prefixIcon: Icons.lock,
            controller: _passwordController,
            validator: Validator.validatePassword,
            hintText: "ادخل كلمة المرور الجديدة",
            isPassword: true,
          ),
          AuthTextFieldWidget(
            titleOfField: "تاكيد كلمة المرور الجديدة",
            prefixIcon: Icons.lock,
            controller: _confirmPasswordController,
            validator: Validator.validatePassword,
            hintText: "تاكيد كلمة المرور الجديدة",
            isPassword: true,
          ),
          CustomButton(
            text: "تحديث كلمة المرور",
            onPressed: () {
              showSuccessPop(context, RouterNames.forgetPasswordView);
            },
          ),
        ],
      ),
    );
  }
}
