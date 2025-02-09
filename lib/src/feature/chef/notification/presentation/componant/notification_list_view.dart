import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/chef/notification/presentation/widgets/notification_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/services/service_locator.dart';
import '../logic/chef_notification_cubit.dart';
import '../logic/chef_notification_state.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) =>
            getIt<ChefNotificationCubit>()..getChefNotification(),
        child: Expanded(
          child: BlocBuilder<ChefNotificationCubit, ChefNotificationState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: Text('لا توجد إشعارات'),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error) => Center(
                  child: Text(error.message),
                ),
                loaded: (notifications) {
                  if (notifications.notifications.isEmpty) {
                    return const Center(
                      child: Text('لا توجد إشعارات'),
                    );
                  }

                  return ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    shrinkWrap: true,
                    itemCount: notifications.notifications.length,
                    itemBuilder: (context, index) {
                      final notification = notifications.notifications[index];
                      final imageUrl = notification.orderImages.isNotEmpty
                          ? notification.orderImages.first.image
                          : 'https://media.istockphoto.com/id/1482059977/vector/order-now-stamp-seal-vector-badge-icon-template-illustration-isolated-on-white-background.jpg?s=170667a&w=0&k=20&c=UBi8yzHTuHYDwlDSEMYvUNLUVXDB9VsSV7csvE-die4=';

                      // Parse the datetime string
                      final notificationDate =
                          DateTime.parse(notification.notificationCreatedAt);
                      final now = DateTime.now();
                      final difference = now.difference(notificationDate);

                      // Format the time difference
                      String timeAgo;
                      if (difference.inMinutes < 60) {
                        timeAgo = 'قبل ${difference.inMinutes} دقيقة';
                      } else if (difference.inHours < 24) {
                        timeAgo = 'قبل ${difference.inHours} ساعة';
                      } else {
                        timeAgo = 'قبل ${difference.inDays} يوم';
                      }

                      return NotificationCardWidget(
                        id: notification.id,
                        imageUrl: imageUrl,
                        title: notification.title,
                        time: timeAgo,
                        type: notification.orderType,
                         status: notification.status?? "وافق المدير",
                      );
                    },
                  );
                },
              );
            },
          ),
        ));
  }
}
