import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/src/feature/chef/notification/presentation/componant/notification_list_view.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomAppBar(
          title: "الاشعارات",
          iconLeft: Icons.arrow_back_ios,
          onPressedLeft: () {},
        ),
        const NotificationListView(),
      ]),
    );
  }
}
