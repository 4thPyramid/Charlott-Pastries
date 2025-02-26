import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/url_launcher_methods.dart';
import '../../../../manager/profile/presentation/widget/custom_list_tile.dart';
import '../../../../manager/profile/presentation/widget/delete_account_pop.dart';

class SalesSettingComponent extends StatelessWidget {
  const SalesSettingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomListTile(
            title: AppStrings.changePassword.tr(),
            icon: Icons.key,
            iconColor: AppColors.primaryColor,
            onPressed: () => context.push(RouterNames.chefChangePassword),
          ),
          SizedBox(height: 20.h),
          CustomListTile(
            title: AppStrings.language.tr(),
            icon: Icons.language,
            iconColor: AppColors.primaryColor,
            onPressed: () => context.push(RouterNames.selectLanguage),
          ),
          SizedBox(height: 20.h),
          CustomListTile(
            onPressed: () => UrlLauncherMethods.launchInBrowser(
                'https://charlottesweets.com/privacy-policy/'),
            title: AppStrings.privacy.tr(),
            icon: Icons.verified_user_outlined,
            iconColor: AppColors.primaryColor,
          ),
          SizedBox(height: 20.h),
          CustomListTile(
            onPressed: () => deleteAccountPop(context, 'sales'),
            title: AppStrings.deleteAccount.tr(),
            icon: Icons.delete,
            iconColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
