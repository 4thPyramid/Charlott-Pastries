
import 'package:flutter/material.dart';

import '../../../../../home/presentation/widgets/newest_order_card_item.dart';

class CurrentChefOrderList extends StatelessWidget {
  const CurrentChefOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const NewestOrdersCardItem(orderName: 'توترته عيد ميلاد بالشيكولاته ', orderType: 'حلويات غربيه',date: '12/12/2021',);
      },
    );
    
  }
}
