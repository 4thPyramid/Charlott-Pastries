import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/otp_form.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpView extends StatelessWidget {
  OtpView({super.key});
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Center(child: AppImageView(AppAssets.blackLogo)),
            SizedBox(height: 40.h),
            const CustomAuthAppBar(
              title: 'كود التحقق',
              subTitle: ' برجاء ادخال كود التحقق لتسجيل دخولك',
            ),
            SizedBox(height: 40.h),
            OtpForm(
              formKey: _formKey,
              controllers: _controllers,
              focusNodes: _focusNodes,
              routeName: RouterNames.loginView,
            ),
            HaveAnAccountWidget(
                onTap: () {},
                title1: "الم يصلك الرمز؟ ",
                title2: "اعادة الارسال"),
          ],
        ),
      ),
    );
  }
}
