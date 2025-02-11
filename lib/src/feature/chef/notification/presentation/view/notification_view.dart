import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/src/feature/chef/notification/presentation/componant/notification_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_strings.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: const Column(children: [
            CustomAppBar(
              title: AppStrings.notifications,
            ),
            NotificationListView(),
          ],),
        ),
      ),
    );
  }
}
