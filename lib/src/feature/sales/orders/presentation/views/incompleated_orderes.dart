import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/new_orders_list_view.dart';
import 'package:flutter/material.dart';

class IncompleatedOrderes extends StatelessWidget {
  const IncompleatedOrderes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(
          title: "الطلبات الغير المكتملة",
          iconleft: Icons.arrow_back_ios,
        ),
        NewOrdersListView()
      ],
    ));
  }
}