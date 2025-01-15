import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../sales/orders/presentation/componant/new_orders_list_view.dart';

class ManagerCompleatedOrders extends StatelessWidget {
  const ManagerCompleatedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(
          title: "الطلبات المكتملة",
          iconleft: Icons.arrow_back_ios,
        ),
        NewOrdersListView()
      ],
    ));
  }
}
