import 'package:flutter/material.dart';

import '../../../../orderDetails/presentation/view/order_details_view.dart';

class CompleteOrdersDetailsComponent extends StatelessWidget {
  const CompleteOrdersDetailsComponent({
    super.key,
    required this.orderTitle,
    this.statusColor,
    required this.orderId,
  });
  final String orderTitle;
  final Color? statusColor;
  final int orderId;
  @override
  Widget build(BuildContext context) {
    return  OrderDetailsView(
      from: "completeOrder",
      title: '" تفاصيل الطلب المكتمله "',
      orderId:orderId ,
    );
  }
}
