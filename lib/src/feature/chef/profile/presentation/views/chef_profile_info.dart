import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';
import '../../../../manager/profile/presentation/widget/edit_accout_pop.dart';
import '../../../../manager/profile/presentation/widget/profile_header.dart';
import '../component/chef_profile_info_component.dart';

class ChefProfileInfo extends StatelessWidget {
  const ChefProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().getProfile(userTyp: "chef");
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: ProfileHeader(
          title: AppStrings.personalInfoData.tr(),
          onPressed: () {
            context.push(RouterNames.chefBottomNavigationBarRoot);
          },
           onPressedEdit: (){
            editAccountPop(context, AppStrings.chef.tr());
          },
        ),
      ),
      body: const ChefProfileInfoComponent(),
    );
  }
}
