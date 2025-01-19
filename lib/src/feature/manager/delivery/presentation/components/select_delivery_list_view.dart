import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../chef_list/presentation/widgets/chef_card_item.dart';

class SelectDeriversListView extends StatelessWidget {
const SelectDeriversListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0.0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return  ChefAndDeliveryCard(
          name: 'محمد عمرو',
          specialization: ' 01007698234 ',
          status: 'متاح',
          buttonText: 'تفاصيل المندوب',
          avatarUrl: 'https://example.com/chef-avatar.jpg',
          ordersCount: 25,
           onViewDetails: () { 
             context.push( RouterNames.deliveryBoyDetails,);
          //!  go to the delivery details page
           }, 
        );
      },
    );
  }
}