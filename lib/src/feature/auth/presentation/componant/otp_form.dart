import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/router_names.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';
import '../logic/verify_email/verify_email_cubit.dart';
import '../logic/verify_email/verify_email_state.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    super.key,
    required this.userType,
  });

  final String userType;

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VerifyEmailCubit>(),
      child: BlocListener<VerifyEmailCubit, VerifyEmailState>(
        listener: (context, state) {
          if (state is VerifyEmailSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message),backgroundColor: Colors.green,),
            );
             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(AppStrings.pleaseWaitUntil.tr()),backgroundColor: Colors.green,),
            );
            context.go(RouterNames.userTypeView);
          } else if (state is VerifyEmailFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage.message)),
            );
          }
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
                      height: 60.h,
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
                          
                          contentPadding: const EdgeInsets.symmetric(
                            //vertical: 20,
                           // horizontal: 20,
                          ),
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
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            if (index < 3) {
                              FocusScope.of(context)
                                  .requestFocus(_focusNodes[index + 1]);
                            } else {
                              FocusScope.of(context).unfocus();
                            }
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
              BlocBuilder<VerifyEmailCubit, VerifyEmailState>(
                builder: (context, state) {
                  if (state is VerifyEmailLoading) {
                    return const CircularProgressIndicator(); 
                  }
                  return CustomButton(
                    text: AppStrings.send.tr(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final otp = _controllers.map((controller) => controller.text).join();
                        context.read<VerifyEmailCubit>().verifyEmail(widget.userType, otp);
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}