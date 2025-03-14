import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/branches_feature/data/models/branch_model.dart';
import '../../../../../../core/common/functions/validator.dart';
import '../../../../../../core/common/specialization_feature/data/models/specialization_model.dart';
import '../../../../../../core/common/widgets/custom_auth_app_bar.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/common/widgets/custom_circle_to_upload_image.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../auth/presentation/widgets/auth_text_form_field_widget.dart';
import '../../../../auth/presentation/widgets/firest_and_last_name_row.dart';
import '../../../../manager/register/presentation/widgets/choice_branch_widget.dart';
import '../logic/chef_register_cubit.dart';
import '../logic/chef_register_state.dart';
import '../widgets/choice_specialization.dart';

class ChefRegisterForm extends StatefulWidget {
  const ChefRegisterForm({super.key});

  @override
  State<ChefRegisterForm> createState() => _ChefRegisterFormState();
}

class _ChefRegisterFormState extends State<ChefRegisterForm> {
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController bioController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  BranchModel? selectedBranch;
  SpecializationModel? selectedSpecialization;
  File? selectedImage;


  bool _validateInputs() {
    if (!formKey.currentState!.validate()) return false;

    // if (!_passwordsMatch()) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("${AppStrings.passwordsdonotmatch.tr}")),
    //   );
    //   return false;
    // }

    // if (selectedBranch == null) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("${AppStrings.pleaseselectthebranch.tr}")),
    //   );
    //   return false;
    // }

    // if (selectedImage == null) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text('برجاء اختيار صورة')),
    //   );
    //   return false;
    // }

    return true;
  }

  void _handleRegister() {
    if (_validateInputs()) {
      context.read<ChefRegisterCubit>().register(
            firstName: fNameController.text,
            lastName: lNameController.text,
            email: emailController.text,
            phone: phoneController.text,
            branchId: selectedBranch!.id,
            password: passwordController.text,
            image: selectedImage,
            specializationId: selectedSpecialization!.id,
            bio: bioController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChefRegisterCubit, ChefRegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            );
            context.push(RouterNames.otpViewForEmail, extra: {
              'userType': 'chef',
            });
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.message)),
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CustomAuthAppBar(
                  title: AppStrings.welcome.tr(),
                  subTitle: AppStrings.fillFormToCreateAccount.tr(),
                ),
                SizedBox(height: 30.h),
                Center(
                  child: CustomPersonalCircleImage(
                    onImageSelected: (file) {
                      setState(() {
                        selectedImage = file;
                      });
                    },
                  ),
                ),
                FirstAndLastNameRow(
                  firstNameController: fNameController,
                  lastNameController: lNameController,
                ),
                ChoiceBranch(
                  onBranchSelected: (branch) {
                    setState(() {
                      selectedBranch = branch;
                    });
                  },
                ),
                ChoiceSpecialization(
                  onSpecializationSelected: (specialization) {
                    setState(() {
                      selectedSpecialization = specialization;
                    });
                  },
                ),
                AuthTextFieldWidget(
                  isPassword: false,
                  controller: emailController,
                  validator: Validator.validateEmail,
                  hintText: AppStrings.enterYourEmail.tr(),
                  titleOfField: AppStrings.email.tr(),
                  prefixIcon: Icons.mail_outline_outlined,
                ),
                AuthTextFieldWidget(
                  isPassword: false,
                  controller: phoneController,
                  validator: Validator.validatePhone,
                  hintText: AppStrings.enterYourPhoneNumber.tr(),
                  titleOfField: AppStrings.phoneNumber.tr(),
                  prefixIcon: Icons.phone_enabled_rounded,
                ),
                AuthTextFieldWidget(
                  isPassword: true,
                  controller: passwordController,
                  validator: Validator.validatePassword,
                  hintText: AppStrings.enterYourPassword.tr(),
                  titleOfField: AppStrings.password.tr(),
                  prefixIcon: Icons.lock_outline,
                ),
                AuthTextFieldWidget(
                  isPassword: true,
                  controller: confirmPasswordController,
                  validator: Validator.validatePassword,
                  hintText: AppStrings.confirmPassword.tr(),
                  titleOfField: AppStrings.confirmPassword.tr(),
                  prefixIcon: Icons.lock_outline,
                ),
                AuthTextFieldWidget(
                  isPassword: false,
                  controller: bioController,
                  hintText: AppStrings.aboutYou.tr(),
                  titleOfField: AppStrings.bio.tr(),
                  prefixIcon: Icons.edit_note_sharp,
                  maxLines: 2,
                ),
                SizedBox(height: 20.h),
                if (state is ChefRegisterLoading)
                  const Center(child: CircularProgressIndicator())
                else
                  Center(
                    child: CustomButton(
                      text: AppStrings.register.tr(),
                      onPressed: _handleRegister,
                    ),
                  ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    fNameController.dispose();
    lNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
