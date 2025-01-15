import 'package:charlot/src/feature/sales/home/presentation/widgets/ready_to_deliver_order_card.dart';
import 'package:flutter/material.dart';

class RedyOrderComponant extends StatelessWidget {
  const RedyOrderComponant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadyToDeliverOrderCard(
      orderName: '',
      orderType: '',
      teamWorkImage: '',
      data: '',
    );
  }
}
