import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:flutter/material.dart';

import '../../../../chef/notification/presentation/componant/notification_list_view.dart';

class SalesNotificationView extends StatelessWidget {
  const SalesNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
          CustomAppBar(
            title: AppStrings.notifications,
          ),
          NotificationListView(
            userType: 'sales',
          ),
        ]
      ),
    );
  }
}
