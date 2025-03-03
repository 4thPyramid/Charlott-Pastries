import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../component/sales_setting_component.dart';

class SalesSettingView extends StatefulWidget {
  const SalesSettingView({super.key});

  @override
  State<SalesSettingView> createState() => _SalesSettingViewState();
}

class _SalesSettingViewState extends State<SalesSettingView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // context.read<ProfileCubit>().getProfile(userTyp: "chef");
    });
  }

  Future<bool> _onWillPop() async {
    context.push(RouterNames.salesBottomNavigationBarRoot);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                    ),
                    onPressed: () {
                      context.push(RouterNames.salesBottomNavigationBarRoot);
                    },
                  ),
                  Text(
                    AppStrings.settings.tr(),
                    style: AppStyles.s24.copyWith(color: AppColors.black),
                  ),
                ],
              ),
              const SalesSettingComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
