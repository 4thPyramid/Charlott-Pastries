import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../logic/profile_cubit.dart';
import '../widget/personal_circle_image.dart';
import '../widget/personal_info_list_tile.dart';

class PersonalInfoComponent extends StatelessWidget {
  const PersonalInfoComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getProfile(userTyp: 'manager');
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () =>  Center(
            child: Text(AppStrings.pleasewait.tr()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (profile) => SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.h),
                
                PersonalCircleImage(profileImage: profile.image,userType: 'manager',),
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
