import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/url_launcher_methods.dart';
import '../logic/profile_cubit.dart';
import '../widget/account_info_card.dart';
import '../widget/custom_list_tile.dart';
import '../widget/logout_pop.dart';

class ProfileComponents extends StatelessWidget {
  const ProfileComponents({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getProfile(userTyp: 'manager');
    return Column(
      children: [
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              loading: () => const CircularProgressIndicator(),
              success: (user) => AccountInfoCard(
                name:'${user.firstName} ${user.lastName}',
                phone: user.phone,
                image: user.image,
              ),
              error: (error) => Text(error.toString()),
            );
            // return const AccountInfoCard(
            //   name: "Ahmed Mohamed",
            //   phone: "01007698234",
            //   image: AppAssets.profileImage,
            // );
          },
        ),
        SizedBox(height: 40.h),
        CustomListTile(
          onPressed: () {
            context.go(RouterNames.personalInfoView);
          },
          title: AppStrings.personalInfoData.tr(),
          icon: Icons.person_outline,
          iconColor: AppColors.orange,
        ),
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () =>  UrlLauncherMethods.launchInBrowser('https://charlottesweets.com/about-us/'),
          title: AppStrings.about.tr(),
          icon: Icons.help_outline,
          iconColor: AppColors.errorColor,
        ),
        // const CustomListTile(
        //   title: AppStrings.notification,
        //   icon: Icons.notifications_none,
        //   iconColor: AppColors.primaryColor,
        // ),
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () {
            context.go(RouterNames.settingView);
          },
          title: AppStrings.settings.tr(),
          icon: Icons.settings_outlined,
        ),
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () => logOutPop(context,'manager'),
          title: AppStrings.logout.tr(),
          icon: Icons.logout,
          iconColor: AppColors.errorColor,
        ),
      ],
    );
  }
}
