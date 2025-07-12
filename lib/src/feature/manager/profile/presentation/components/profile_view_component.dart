import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../logic/profile_cubit.dart';
import '../widget/account_info_card.dart';
import '../widget/custom_list_tile.dart';
import '../widget/logout_pop.dart';

class ProfileComponents extends StatefulWidget {
  const ProfileComponents({super.key});

  @override
  State<ProfileComponents> createState() => _ProfileComponentsState();
}

class _ProfileComponentsState extends State<ProfileComponents> {
  @override
  void initState() {
    super.initState();
    // Safe way to call Cubit after build
    Future.microtask(() {
      context.read<ProfileCubit>().getProfile(userTyp: 'manager');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              loading: () => const CircularProgressIndicator(),
              success: (user) => AccountInfoCard(
                name: '${user.firstName} ${user.lastName}',
                phone: user.phone,
                image: user.image,
              ),
              error: (error) => Text(error.toString()),
            );
          },
        ),
        SizedBox(height: 40.h),

        /// Personal Info
        CustomListTile(
          onPressed: () {
            debugPrint("Tapped: Personal Info");
            GoRouter.of(context).go(RouterNames.personalInfoView);
          },
          title: AppStrings.personalInfoData.tr(),
          icon: Icons.person_outline,
          iconColor: AppColors.orange,
        ),
        SizedBox(height: 30.h),

        /// About
        CustomListTile(
          onPressed: () async {
            debugPrint("Tapped: About App");
            final url = Uri.parse('https://charlottesweets.com/about-us/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Could not launch the URL')),
              );
            }
          },
          title: AppStrings.about.tr(),
          icon: Icons.help_outline,
          iconColor: AppColors.errorColor,
        ),
        SizedBox(height: 30.h),

        /// Settings
        CustomListTile(
          onPressed: () {
            debugPrint("Tapped: Settings");
            GoRouter.of(context).go(RouterNames.settingView);
          },
          title: AppStrings.settings.tr(),
          icon: Icons.settings_outlined,
        ),
        SizedBox(height: 30.h),

        /// Logout
        CustomListTile(
          onPressed: () {
            debugPrint("Tapped: Logout");
            logOutPop(context, 'manager');
          },
          title: AppStrings.logout.tr(),
          icon: Icons.logout,
          iconColor: AppColors.errorColor,
        ),
      ],
    );
  }
}
