
import 'package:flutter/material.dart';

import 'orders_taps_item_card_widget.dart';

class OrdersListViewForTaps extends StatelessWidget {
  const OrdersListViewForTaps(
      {super.key,
      required this.orderId,
      required this.time,
      required this.itemCount,
      required this.onPressed});
  final int orderId;
  final String time;
  final int itemCount;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: OrdersTapsItemCardWidget(
                orderId: orderId,
                time: time,
                onPressed: onPressed,
              ));
        },
      ),
    );
  }
}
