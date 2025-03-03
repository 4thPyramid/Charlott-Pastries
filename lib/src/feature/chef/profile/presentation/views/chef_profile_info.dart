import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';
import '../../../../manager/profile/presentation/widget/edit_accout_pop.dart';
import '../../../../manager/profile/presentation/widget/profile_header.dart';
import '../component/chef_profile_info_component.dart';
class ChefProfileInfo extends StatefulWidget {
  const ChefProfileInfo({super.key});

  @override
  State<ChefProfileInfo> createState() => _ChefProfileInfoState();
}

class _ChefProfileInfoState extends State<ChefProfileInfo> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().getProfile(userTyp: "chef");
    });
  }

  Future<bool> _onWillPop() async {
    context.go(RouterNames.chefBottomNavigationBarRoot);
    return false; 
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: false, 
           
          title: ProfileHeader(
            title: AppStrings.personalInfoData.tr(),
            onPressed: () {
              context.go(RouterNames.chefBottomNavigationBarRoot);
            },
            onPressedEdit: () {
              editAccountPop(context, AppStrings.chef.tr());
            },
          ),
         
        ),
        body: const ChefProfileInfoComponent(),
      ),
    );
  }
}
