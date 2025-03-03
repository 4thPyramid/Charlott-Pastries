import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/personal_info_component.dart';
import '../logic/profile_cubit.dart';
import '../widget/edit_accout_pop.dart';
import '../widget/profile_header.dart';

class PersonalInfoView extends StatefulWidget {
  const PersonalInfoView({super.key});

  @override
  State<PersonalInfoView> createState() => _PersonalInfoViewState();
}

class _PersonalInfoViewState extends State<PersonalInfoView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().getProfile(userTyp: 'manager');
    });
  }

  Future<bool> _onWillPop() async {
    context.push(RouterNames.managerBottomNavigationBarRoot);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: ProfileHeader(
            title: AppStrings.personalInfoData.tr(),
            onPressed: () {
              context.push(RouterNames.managerBottomNavigationBarRoot);
            },
            onPressedEdit: () {
              editAccountPop(context, 'manager');
            },
          ),
        ),
        body: const PersonalInfoComponent(),
      ),
    );
  }
}
