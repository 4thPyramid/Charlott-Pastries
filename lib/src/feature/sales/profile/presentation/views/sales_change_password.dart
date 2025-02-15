import 'package:charlot/generated/app_strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../component/sales_change_password_component.dart';

class SalesChangePassword extends StatelessWidget {
  const SalesChangePassword({super.key});

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
                    AppStrings.changePassword,
                    style: AppStyles.s24.copyWith(color: AppColors.black),
                  ),
                ],
              ),
              const SalesChangePasswordComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
