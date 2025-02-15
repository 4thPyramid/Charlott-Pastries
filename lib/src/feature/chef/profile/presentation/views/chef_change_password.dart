import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../component/chef_change_password_component.dart';

class ChefChangePassword extends StatelessWidget {
  const ChefChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    AppStrings.changePassword.tr(),
                    style: AppStyles.s24.copyWith(color: AppColors.black),
                  ),
                ],
              ),
              const ChefChangePasswordComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

