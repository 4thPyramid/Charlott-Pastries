import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../chef/notification/presentation/componant/notification_list_view.dart';

class ManagerNotificationView extends StatelessWidget {
  const ManagerNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: Column(
            children: [
              CustomAppBar(
                title: AppStrings.notifications.tr(),
              ),
              const NotificationListView(
                userType: 'manager',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
