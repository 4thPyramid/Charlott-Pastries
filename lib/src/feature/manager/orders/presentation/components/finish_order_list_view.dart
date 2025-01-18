import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/shared_order_item_card.dart';
import '../../../../../../core/theme/app_colors.dart';

class FinishOrderListView extends StatelessWidget {
  const FinishOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const SharedOrderItemCard(
                id: 0,
                orderTitle: ' تم الانتهاء منها',
                pageTitle: ' تفاصيل الطلب المنتهيه',
                orderStatusColor: AppColors.lightBlue2,
              ),
            );
          },
        ),
      ),
    );
  }
}
