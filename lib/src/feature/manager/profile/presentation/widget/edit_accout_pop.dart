import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/main_function.dart';
import '../logic/profile_cubit.dart';

editAccountPop(BuildContext context ,String userType) {
  var nameTextController = TextEditingController();
  var emailTextController = TextEditingController();
  var phoneTextController = TextEditingController();

  customAlertDialog(
    marginHPadding: 20.h,
    marginVPadding: 20.h,
    hPadding: 12.w,
    vPadding: 12.h,
    context: context,
    content: Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0.h),
      child: Column(
        children: [
          CustomTextFormField(
            controller: nameTextController,
            hintText: "الاسم",
            prefixIcon: const Icon(Icons.person_outline),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            controller: emailTextController,
            hintText: "البريد الالكتروني",
            prefixIcon: Icon(Icons.email_outlined),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            controller: phoneTextController,
            hintText: "رقم الهاتف",
            prefixIcon: Icon(Icons.phone),
          ),
          SizedBox(height: 20.h),
          CustomButton(
            text: "حفظ",
            textStyle: AppStyles.s12.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: () {
              context.read<ProfileCubit>().updateProfile(
                    name: nameTextController.text,
                    email: emailTextController.text,
                    phone: phoneTextController.text,
                    userTyp: userType
                  );
              context.pop();
            },
          )
        ],
      ),
    ),
  );
}
