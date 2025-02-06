import 'package:charlot/src/feature/chef/profile/presentation/component/chef_profile_view_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/utils/app_strings.dart';

class ChefProfileView extends StatelessWidget {
  const ChefProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
          const CustomAppBar(
                  title: AppStrings.profile,
              ),
              SizedBox(height: 10.h),
              const ChefProfileViewComponent(),
             // const ChefBottomNavigationBarRoot(),
            ],
          ),
        ),
      ),
    );
  }
}

