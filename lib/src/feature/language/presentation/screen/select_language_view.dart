import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/functions/show_toast.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../generated/app_strings.g.dart';
import '../widget/language_card.dart';
import '../logic/language_cubit.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(32.0.r),
          child:
              BlocConsumer<LanguageCubit, Locale>(listener: (context, state) {
            if (state.languageCode == 'ar') {
              context.setLocale(const Locale('ar'));
            } else {
              context.setLocale(const Locale('en'));
            }
            showToast(message: 'Language Changed to $state', state: ToastStates.WARNING ,);
          }, builder: (context, selectedLanguage) {
            return SingleChildScrollView(
              child: Column(children: [
              Image.asset(AppAssets.langImage,),
                SizedBox(height: 8.h),
                Text(
                  "select_language".tr(),
                  style: AppStyles.s18.copyWith(
                    color: AppColors.greyForText,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60.h),
                Row(
                  children: [
                    Expanded(
                      child: LanguageCard(
                        onTap: () async {
                          context
                              .read<LanguageCubit>()
                              .setLanguage(const Locale('ar'));
                        },
                        icon: '🇸🇦',
                        language: 'ar'.tr(),
                        isSelected:
                            context.watch<LanguageCubit>().state.languageCode ==
                                'ar',
                      ),
                    ),
                    const SizedBox(width: 16),
                    // English Card
                    Expanded(
                      child: LanguageCard(
                        onTap: () async {
                          context
                              .read<LanguageCubit>()
                              .setLanguage(const Locale('en'));
                        },
                        icon: '🇺🇸',
                        language: 'en'.tr(),
                        isSelected:
                            context.watch<LanguageCubit>().state.languageCode ==
                                'en',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: AppStrings.back.tr(),
                    backgroundColor: AppColors.primaryColor,
                    onPressed: () {
                      final selectedLanguage =
                          context.read<LanguageCubit>().state.languageCode;
                      if (selectedLanguage.isNotEmpty) {
                        context.pop();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("please_select_language".tr()),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ]),
            );
          }),
        ),
      ),
    );
  }
}
