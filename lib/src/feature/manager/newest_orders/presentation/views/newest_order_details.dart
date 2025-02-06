import 'package:flutter/material.dart';

import '../../../../orderDetails/presentation/view/order_details_view.dart';

class NewestOrderDetails extends StatelessWidget {
  const NewestOrderDetails({super.key, required this.orderId});
final int orderId;
  @override
  Widget build(BuildContext context) {
    return  OrderDetailsView(
      from: 'NewestOrderDetails',
      title: ' تفاصيل الطلب الجديد ',
      orderId: orderId,
    );
  }
}
