import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/auth/presentation/componant/login_form.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/router_names.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.userType});
final String userType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [       
              SizedBox(height: 100.h),
              const Center(child: AppImageView(AppAssets.blackLogo)),
              SizedBox(height: 40.h),
               CustomAuthAppBar(
                  title: AppStrings.welcome.tr(),
                  subTitle:
                    AppStrings.happyToSeeYouAgain.tr()),
              SizedBox(height: 40.h),
               LoginForm(userType: userType,),
              HaveAnAccountWidget(
                  onTap: () {
                    print(userType);
                    if (userType == "manager") {
                      context.push(RouterNames.managerRegister);
                    }else if(userType == "sales"){
                      context.push(RouterNames.salesRegisterView);
                    }else {
                  context.push(RouterNames.chefRegister);
                    }
                  },
                  title1:AppStrings.haveAnAccount.tr(),
                  title2: AppStrings.createNewAccount.tr(),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
