
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_strings.dart';
import '../components/sales_register_form.dart';

class SalesRegisterView extends StatelessWidget {
  const SalesRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
             const SalesRegisterForm(),
            HaveAnAccountWidget(
              onTap: () {
                
              },
               title1: AppStrings.haveAnAccount,
              title2: AppStrings.signIn,
            ),
            SizedBox(height: 30.h),
          ],
        ),
      );
    }));
  }
}
