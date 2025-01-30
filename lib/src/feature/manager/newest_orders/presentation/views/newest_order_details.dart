import 'package:flutter/material.dart';

import '../../../../orderDetails/presentation/view/order_details_view.dart';

class NewestOrderDetails extends StatelessWidget {
  const NewestOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderDetailsView(
      from: 'NewestOrderDetails',
      title: ' تفاصيل الطلب الجديد ',
      orderStatus: 'طلب جديد',
    );
  }
}
