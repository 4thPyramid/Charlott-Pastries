import 'package:charlot/src/feature/manager/profile/presentation/widget/custom_list_tile.dart';
import 'package:charlot/src/feature/manager/profile/presentation/widget/logout_pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/url_launcher_methods.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';
import '../../../../manager/profile/presentation/widget/account_info_card.dart';

class ChefProfileViewComponent extends StatelessWidget {
  const ChefProfileViewComponent({super.key});
  @override
  Widget build(BuildContext context) {
     context.read<ProfileCubit>().getProfile(userTyp: 'chef');
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
           
          },
        ),
        SizedBox(height: 40.h),
        CustomListTile(
          onPressed: () {
            context.go(RouterNames.chefProfileInfo);
          },
          title: AppStrings.personalInfo,
          icon: Icons.person_outline,
          iconColor: AppColors.orange,
        ),
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () =>  UrlLauncherMethods.launchInBrowser('https://charlottesweets.com/about-us/'),
          title: AppStrings.about,
          icon: Icons.help_outline,
          iconColor: AppColors.errorColor,
        ),
      
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () {
            context.go(RouterNames.chefSettingView);
          },
          title: AppStrings.settings,
          icon: Icons.settings_outlined,
        ),
        SizedBox(height: 30.h),
        CustomListTile(
          onPressed: () => logOutPop(context,'chef'),
          title: AppStrings.signout,
          icon: Icons.logout,
          iconColor: AppColors.errorColor,
        ),
      ],
    );
  }
}