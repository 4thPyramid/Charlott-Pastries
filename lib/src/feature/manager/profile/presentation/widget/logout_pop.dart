import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/data/cached/cache_helper.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/main_function.dart';
import '../logic/delete_account_cubit.dart';
import '../logic/delete_account_state.dart';

void logOutPop(BuildContext context, String userType) {
  customAlertDialog(
    marginHPadding: 20.h,
    marginVPadding: 20.h,
    hPadding: 12.w,
    vPadding: 12.h,
    context: context,
    content: BlocProvider(
      create: (context) => getIt<DeleteAccountCubit>(),
      child: BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
        listener: (context, state) async {
          state.when(
            initial: () {},
            loading: () {},
            success: (message) async {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.green,
                ),
              );
              await CacheHelper().clearData();
              await Future.delayed(const Duration(milliseconds: 200));
              context.pushReplacement(RouterNames.userTypeView);
            },
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(error.message)),
              );
            },
          );
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.logout,
                  color: AppColors.primaryColor,
                  size: 50,
                ),
                SizedBox(height: 13.h),
                Text(
                  AppStrings.logout.tr(),
                  style: AppStyles.s20.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 39.h),
                Text(
                  AppStrings.areYouSureToLogOut.tr(),
                  textAlign: TextAlign.center,
                  style: AppStyles.s16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                        width: 150.w,
                        backgroundColor: AppColors.primaryColor,
                        text: AppStrings.yes.tr(),
                        textStyle: AppStyles.s12.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        onPressed: () {
                          context
                              .read<DeleteAccountCubit>()
                              .logout(userType: userType);
                        }),
                    CustomButton(
                      width: 150.w,
                      text: AppStrings.cancel.tr(),
                      backgroundColor: AppColors.white,
                      textStyle: AppStyles.s12.copyWith(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
