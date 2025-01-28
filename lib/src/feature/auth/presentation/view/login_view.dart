import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/login_form.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/router_names.dart';
import '../../../../../core/utils/app_strings.dart';

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
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [       

              SizedBox(height: 100.h),
              const Center(child: AppImageView(AppAssets.blackLogo)),
              SizedBox(height: 40.h),
              const CustomAuthAppBar(
                  title: AppStrings.welcom,
                  subTitle:
                    AppStrings.happyToSeeYouAgain),
              SizedBox(height: 40.h),
              const LoginForm(),
              HaveAnAccountWidget(
                  onTap: () {
                    print(userType);
                    if (userType == "manager") {
                      context.push(RouterNames.managerRegister);
                    }else if(userType == "sales"){
                      context.push(RouterNames.salesRegisterView);
                    }else{
                //  context.push(RouterNames.chefRegisterView);
                    }
                  },
                  title1:AppStrings.haveAnAccount,
                  title2: AppStrings.createNewAccount,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
