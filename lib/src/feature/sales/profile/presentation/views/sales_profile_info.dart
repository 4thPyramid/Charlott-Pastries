import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';
import '../../../../manager/profile/presentation/widget/edit_accout_pop.dart';
import '../../../../manager/profile/presentation/widget/profile_header.dart';
import '../component/sales_profile_info_component.dart';

class SalesProfileInfo extends StatefulWidget {
  const SalesProfileInfo({super.key});

  @override
  State<SalesProfileInfo> createState() => _SalesProfileInfoState();
}

class _SalesProfileInfoState extends State<SalesProfileInfo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().getProfile(userTyp: 'sales');
    });
  }

  Future<bool> _onWillPop() async {
    context.push(RouterNames.salesBottomNavigationBarRoot);
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
              context.push(RouterNames.salesBottomNavigationBarRoot);
            },
            onPressedEdit: () {
              editAccountPop(context, 'sales');
            },
          ),
        ),
        body: const SalesProfileInfoComponent(),
      ),
    );
  }
}
