import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/shared_order_item_card.dart';

class CompleteOrdersListView extends StatelessWidget {
  const CompleteOrdersListView({super.key});

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
                orderTitle: 'طلب مكتمله',
                pageTitle: 'تفااصيل الطلب المكتمل',
                orderStatusColor: Colors.green,
              ),
            );
          },
        ),
      ),
    );
  }
}
