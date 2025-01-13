import 'package:charlot/core/routes/app_routers.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_shimmer.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/intro/presentation/widgets/choose_your_type_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class UserTypeView extends StatelessWidget {
  const UserTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(child: AppImageView(AppAssets.logo)),
        SizedBox(height: 20.h),
        Text("مرحبا بكم", style: AppStyles.s24),
        SizedBox(height: 20.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            " في محلنا المخصص لادارة متجر الحلويات سجل دخولك الان",
            style: AppStyles.s16,
            textAlign: TextAlign.center,
          ),
        ),
        const ChooseUserTypeButton(text: 'مدير'),
        ChooseUserTypeButton(
          text: 'سيلز',
          onTap: () {
            context.go(RouterNames.salesRegisterView);
          },
        ),
        const ChooseUserTypeButton(text: 'شيف'),
      ],
    ));
  }
}
