import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/chef/notification/presentation/widgets/notification_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => const NotificationCardWidget(
            imageUrl: AppAssets.home,
            title: 'شيف حلويات شرقي',
            time: ' قبل 3 ساعات',
            type: ' طلب اضافة  ',
          ),
        ),
      ),
    );
  }
}
