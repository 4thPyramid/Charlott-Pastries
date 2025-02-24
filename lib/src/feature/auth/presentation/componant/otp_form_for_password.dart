import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../core/routes/router_names.dart';
import '../../../../../core/theme/app_colors.dart';


import '../logic/reset_password/reset_password_cubit.dart';
import '../logic/reset_password/reset_password_state.dart';

class OtpFormForPassword extends StatefulWidget {
  const OtpFormForPassword({
    super.key,
    required this.userType, required this.identifier,
  });
  final String identifier;
  final String userType;

  @override
  State<OtpFormForPassword> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpFormForPassword> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  String get _otpCode => _controllers.map((e) => e.text).join();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          verifyResetCodeSuccess: (message) {
            context.go(RouterNames.resetPasswordView, extra: {
              'identifier': widget.identifier,
               'userType': widget.userType,
               'otp': _otpCode,
               });
          },
          verifyResetCodeError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message),
                backgroundColor: Colors.red,
              ),
            );
            // Clear all fields on error
            for (var controller in _controllers) {
              controller.clear();
            }
            FocusScope.of(context).requestFocus(_focusNodes[0]);
          },
        );
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: SizedBox(
                    width: 60.w,
                    height: 80.h,
                    child: TextFormField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLength: 1,
                      cursorHeight: 30.h,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        counterText: '..',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        errorStyle: const TextStyle(
                            height: 0), // Hide error text but keep validation
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          if (index < 3) {
                            FocusScope.of(context)
                                .requestFocus(_focusNodes[index + 1]);
                          } else {
                            FocusScope.of(context).unfocus();
                          }
                        } else if (value.isEmpty && index > 0) {
                          // Handle backspace - move focus back
                          FocusScope.of(context)
                              .requestFocus(_focusNodes[index - 1]);
                        }
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16.h),
            BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
              builder: (context, state) {
                //final isLoading = state is VerifyResetCodeLoading;
                return CustomButton(
                  text: AppStrings.send.tr(),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<ResetPasswordCubit>().verifyResetCode(
                            otp: _otpCode,
                            userType: widget.userType, 
                            identifier:widget.identifier,
                            
                          );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
