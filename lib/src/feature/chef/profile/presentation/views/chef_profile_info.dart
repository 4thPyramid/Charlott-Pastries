import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../manager/profile/presentation/widget/profile_header.dart';
import '../component/chef_profile_info_component.dart';

class ChefProfileInfo extends StatelessWidget {
  const ChefProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: ProfileHeader(
          title: AppStrings.personalInfoData,
          onPressed: () {
            context.push(RouterNames.managerBottomNavigationBarRoot);
          },
        ),
      ),
      body: const ChefProfileInfoComponent(),
    );
  }
}
