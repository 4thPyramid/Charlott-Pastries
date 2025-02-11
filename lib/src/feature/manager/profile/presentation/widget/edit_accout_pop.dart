import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../data/model/profile_model.dart';
import '../logic/profile_cubit.dart';
void editAccountPop(BuildContext context, String userType) {
  final profileCubit = context.read<ProfileCubit>();
  
  final currentProfile = profileCubit.state.mapOrNull(
    success: (state) => state.data as ProfileModel?,
  );

  final fNameTextController = TextEditingController(text: currentProfile?.firstName ?? '');
  final lNameTextController = TextEditingController(text: currentProfile?.lastName ?? '');
  final emailTextController = TextEditingController(text: currentProfile?.email ?? '');
  final phoneTextController = TextEditingController(text: currentProfile?.phone ?? '');

  bool isFieldChanged(String? originalValue, String newValue) {
    return newValue.isNotEmpty && newValue != originalValue;
  }

  showDialog(
    context: context,
    builder: (dialogContext) => BlocProvider.value(
      value: profileCubit, 
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 20.h,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h,
          ),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 50.0.h,
                    bottom: 50.0.h,
                    left: 0,
                    right: 0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Text(
                          AppStrings.editPersonalInf,
                          style: AppStyles.s16.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomTextFormField(
                                controller: fNameTextController,
                                hintText: AppStrings.firstName,
                                prefixIcon: const Icon(Icons.person_outline),
                              ),
                              SizedBox(height: 20.h),
                              CustomTextFormField(
                                controller: lNameTextController,
                                hintText: AppStrings.lastName,
                                prefixIcon: const Icon(Icons.person_outline),
                              ),
                              SizedBox(height: 20.h),
                              CustomTextFormField(
                                controller: emailTextController,
                                hintText: AppStrings.email,
                                prefixIcon: const Icon(Icons.email_outlined),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 20.h),
                              CustomTextFormField(
                                controller: phoneTextController,
                                hintText: AppStrings.phoneNumber,
                                prefixIcon: const Icon(Icons.phone),
                                keyboardType: TextInputType.phone,
                              ),
                              SizedBox(height: 20.h),
                              if (state.maybeMap(
                                loading: (_) => true,
                                orElse: () => false,
                              ))
                                const CircularProgressIndicator()
                              else
                                CustomButton(
                                  text: AppStrings.save,
                                  textStyle: AppStyles.s12.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    
                                    Map<String, String> updatedFields = {};

                                    if (isFieldChanged(currentProfile?.firstName, fNameTextController.text)) {
                                      updatedFields['firstName'] = fNameTextController.text;
                                    }
                                    if (isFieldChanged(currentProfile?.lastName, lNameTextController.text)) {
                                      updatedFields['lastName'] = lNameTextController.text;
                                    }
                                    if (isFieldChanged(currentProfile?.email, emailTextController.text)) {
                                      updatedFields['email'] = emailTextController.text;
                                    }
                                    if (isFieldChanged(currentProfile?.phone, phoneTextController.text)) {
                                      updatedFields['phone'] = phoneTextController.text;
                                    }

                                    if (updatedFields.isNotEmpty) {
                                      context.read<ProfileCubit>().updateProfile(
                                            fName: updatedFields['firstName'],
                                            lName: updatedFields['lastName'],
                                            email: updatedFields['email'],
                                            phone: updatedFields['phone'],
                                            userTyp: userType,
                                          );
                                      Navigator.pop(dialogContext);
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('لم يتم إجراء أي تغييرات'),
                                        ),
                                      );
                                      Navigator.pop(dialogContext);
                                    }
                                  },
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}