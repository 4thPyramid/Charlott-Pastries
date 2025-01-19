
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../widgets/chef_card_item.dart';

class SelectChefsListView extends StatelessWidget {
  const SelectChefsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ChefAndDeliveryCard(
            name: 'محمد عمرو',
            specialization:'شيف حلويات شرقي ',
            status: 'متاح',
            avatarUrl: 'https://example.com/chef-avatar.jpg',
            ordersCount: 25,
            buttonText:'تفاصيل الشيف',
            onViewDetails: () {
              context.push( RouterNames.chefDetails,);
              // Handle view details button tap
              print('View details tapped');
            },
          );
        });
  }
}
