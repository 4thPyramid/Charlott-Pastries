import 'package:charlot/src/feature/chef/profile/presentation/component/chef_profile_view_component.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';

class ChefProfileView extends StatelessWidget {
  const ChefProfileView({super.key});

  @override
  Widget build(BuildContext context) {
        return SingleChildScrollView(
    child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
             CustomAppBar(
              title: AppStrings.personalData.tr(),
            ),
            SizedBox(height: 10.h),
            BlocProvider(
              create: (context) => getIt<ProfileCubit>(),
              child: const ChefProfileViewComponent(),
             // const ChefBottomNavigationBarRoot(),
            ),
            ],
          ),
        ),
      
    );
  }
}

