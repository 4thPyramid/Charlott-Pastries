import 'package:flutter/material.dart';

import '../../../../orderDetails/presentation/view/order_details_view.dart';

class CompleteOrdersDetailsComponent extends StatelessWidget {
  const CompleteOrdersDetailsComponent({
    super.key,
    required this.orderTitle,
    this.statusColor,
    this.isCompleted = false,
  });
  final String orderTitle;
  final Color? statusColor;
  final bool? isCompleted;
  @override
  Widget build(BuildContext context) {
    return const OrderDetailsView(
      from: "completeOrder",
      title: '" تفاصيل الطلب المكتمله "',
      orderStatus: 'طلب مكتمل',
    );
  }
}
