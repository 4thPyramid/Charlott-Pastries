import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../components/profile_view_component.dart';

class ManagerProfileView extends StatelessWidget {
  const ManagerProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            CustomAppBar(
                title: AppStrings.profile,
            ),
            SizedBox(height: 10.h),
            const ProfileComponents(),
          ],
        ),
      ),
    );
  }
}

