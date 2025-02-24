import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../generated/app_strings.g.dart';
import '../../../../auth/presentation/widgets/have_an_account_widget.dart';
import '../components/chef_register_from.dart';

class ChefRegisterView extends StatelessWidget {
  const ChefRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
           const ChefRegisterForm(),
            
            HaveAnAccountWidget(
              onTap: () {
                context.pop();
              },
              title1: AppStrings.haveAnAccount.tr(),
              title2: AppStrings.signIn.tr(),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      );
    }));
  }
}
