
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/url_launcher_methods.dart';
import '../widget/custom_list_tile.dart';
import '../widget/delete_account_pop.dart';

class SettingsComponent extends StatelessWidget {
  const SettingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CustomListTile(
          title: AppStrings.changePassword,
          icon: Icons.key,
          iconColor: AppColors.primaryColor,
          onPressed: () => context.push(RouterNames.changePasswordView),
        ),
        SizedBox(height: 20.h),
          const CustomListTile(
          title: AppStrings.language,
          icon: Icons.language,
          iconColor: AppColors.primaryColor,
        ),
        SizedBox(height: 20.h),

          CustomListTile(
                    onPressed: () =>  UrlLauncherMethods.launchInBrowser('https://charlottesweets.com/privacy-policy/'),

          title: AppStrings.privacy,
          icon: Icons.verified_user_outlined,
          iconColor: AppColors.primaryColor,
        ),
        SizedBox(height: 20.h),

           CustomListTile(
            onPressed: ()=>deleteAccountPop(context),
          title: AppStrings.deleteAccount,
          icon: Icons.delete,
          iconColor: AppColors.primaryColor,
        ),
        ],
      ),
    );
  }
}
