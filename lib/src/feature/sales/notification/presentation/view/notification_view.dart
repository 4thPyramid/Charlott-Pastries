import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/sales/notification/presentation/componant/sales_notification_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';

class SalesNotificationView extends StatelessWidget {
  const SalesNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(
          title: AppStrings.notifications,
        ),
        SalesNotificationListView(),
      ]),
    );
  }
}
