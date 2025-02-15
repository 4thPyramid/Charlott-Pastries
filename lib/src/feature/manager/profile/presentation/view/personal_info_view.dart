import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../components/personal_info_component.dart';
import '../logic/profile_cubit.dart';
import '../widget/edit_accout_pop.dart';
import '../widget/profile_header.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().getProfile(userTyp: 'manager');
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: ProfileHeader(
          title: AppStrings.personalInfoData.tr(),
          onPressed: () {
              context.push(RouterNames.managerBottomNavigationBarRoot);
          },
            onPressedEdit: (){
              editAccountPop(context, 'manager');
            },
        ),
      ),
      body: const PersonalInfoComponent(),
    );
  }
}
