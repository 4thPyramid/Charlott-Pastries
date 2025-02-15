import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../component/chef_setting_component.dart';

class ChefSettingView extends StatelessWidget {
  const ChefSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            SizedBox(height: 50.h,),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black,
                  ),
                  onPressed: () {
                    context.push(RouterNames.chefBottomNavigationBarRoot);
                  },
                ),
                 Text(
                  AppStrings.settings.tr(),
                  style: AppStyles.s24.copyWith(color:  AppColors.black),
                ),
              ],
            ),
            const ChefSettingComponent(),
          ],
        ),
      ),
    );
  }
}
