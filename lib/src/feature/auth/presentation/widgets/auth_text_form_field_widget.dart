import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFieldWidget extends StatefulWidget {
  const AuthTextFieldWidget({
    super.key,
    this.titelOfField,
    this.controller,
    required this.isPassword,
    required this.hintText,
    this.prefixIcon,
    this.validator,
    this.sufixIcon,
    this.onPressedSuffix,
  });
  final String? titelOfField;
  final TextEditingController? controller;
  final bool isPassword;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final void Function()? onPressedSuffix;

  final FormFieldValidator<String>? validator;

  @override
  State<AuthTextFieldWidget> createState() => _AuthTextFieldWidgetState();
}

class _AuthTextFieldWidgetState extends State<AuthTextFieldWidget> {
  bool _isPasswordVisiable = false;
  void _togglePassword() {
    setState(() {
      _isPasswordVisiable = !_isPasswordVisiable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            widget.titelOfField ?? '',
            style: AppStyles.s14.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          controller: widget.controller,
          isPassword: widget.isPassword,
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon, color: AppColors.primaryColor),
          validator: widget.validator,
          obscureText: widget.isPassword ? !_isPasswordVisiable : false,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: _togglePassword,
                  icon: Icon(
                    _isPasswordVisiable
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.grey,
                  ),
                )
              : widget.sufixIcon != null
                  ? IconButton(
                      icon:
                          Icon(widget.sufixIcon, color: AppColors.primaryColor),
                      onPressed: widget.onPressedSuffix,
                      key: null,
                    )
                  : null,
        ),
      ]),
    );
  }
}
