import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../components/personal_info_component.dart';
import '../widget/profile_header.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

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
          // onPressedEdit: (){
          //   editAccountPop(context, 'manager');
          // },
        ),
      ),
      body: const PersonalInfoComponent(),
    );
  }
}
