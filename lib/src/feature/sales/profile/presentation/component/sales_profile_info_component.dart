import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';
import '../../../../manager/profile/presentation/widget/personal_circle_image.dart';
import '../../../../manager/profile/presentation/widget/personal_info_list_tile.dart';

class SalesProfileInfoComponent extends StatelessWidget {
  const SalesProfileInfoComponent({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getProfile(userTyp: 'sales');
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text("Please wait..."),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (profile) => SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.h),
                PersonalCircleImage(
                  profileImage: profile.image,
                  userType: 'sales',
                ),
                SizedBox(height: 40.h),
                PersonalInfoListTile(
                  title: AppStrings.name.tr(),
                  subtitle: '${profile.firstName} ${profile.lastName}',
                  icon: Icons.person_outline,
                  iconColor: AppColors.orange,
                ),
                PersonalInfoListTile(
                  title: AppStrings.email.tr(),
                  subtitle: profile.email,
                  icon: Icons.email_outlined,
                ),
                PersonalInfoListTile(
                  title: AppStrings.phoneNumber.tr(),
                  subtitle: profile.phone,
                  icon: Icons.phone,
                ),
              ],
            ),
          ),
          error: (error) => Center(
            child: Text(
              error.message,
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            ),
          ),
        );
      },
    );
  }
}
