import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/new_orders_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WaitingOrders extends StatelessWidget {
  const WaitingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppBar(
          title: "طلبات قيد التنفيذ",
          iconLeft: Icons.arrow_back_ios,
          onPressedLeft: () {
            context.go(RouterNames.salesBottomNavigationBarRoot);
          },
        ),
        WaitingOrdersListView()
      ],
    ));
  }
}
