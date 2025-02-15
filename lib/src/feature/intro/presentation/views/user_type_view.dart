import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/intro/data/enum/user_type_enum.dart';
import 'package:charlot/src/feature/intro/presentation/widgets/choose_your_type_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';
import '../logic/user_type_cubit.dart';
class UserTypeView extends StatelessWidget {
  const UserTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: AppImageView(AppAssets.blackLogo)),
          SizedBox(height: 20.h),
          Text(AppStrings.welcome.tr(), style: AppStyles.s24),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppStrings.welcomeInOurApp.tr(),
              style: AppStyles.s16,
              textAlign: TextAlign.center,
            ),
          ),
          ChooseUserTypeButton(
            text: AppStrings.manager.tr(),
            onTap: () {
              context.read<UserTypeCubit>().selectUserType(UserTypeEnum.manager); 
                            context.push(RouterNames.loginView, extra: {'userType': "manager"});
            },
          ),
          ChooseUserTypeButton(
            text: AppStrings.sales.tr(),
            onTap: () {
              context.read<UserTypeCubit>().selectUserType(UserTypeEnum.sales);
              context.push(RouterNames.loginView, extra: {'userType': "sales"});
            },
          ),
          ChooseUserTypeButton(
            text: AppStrings.chef.tr(),
            onTap: () {
              context.read<UserTypeCubit>().selectUserType(UserTypeEnum.chef);
              context.push(RouterNames.loginView, extra: {'userType': "chef"});
            },
          ),
        ],
      ),
    );
  }
}
