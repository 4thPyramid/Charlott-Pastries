import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/src/feature/chef/notification/presentation/componant/notification_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_strings.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(
          title: AppStrings.notifications,
       
        ),
        NotificationListView(),
      ]),
    );
  }
}
