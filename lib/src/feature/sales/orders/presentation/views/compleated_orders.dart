import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/orders/presentation/componant/new_orders_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompleatedOrdersSales extends StatelessWidget {
  const CompleatedOrdersSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppBar(
          title: "الطلبات المكتملة",
          iconLeft: Icons.arrow_back_ios,
          onPressedLeft: () {
            context.go(RouterNames.salesBottomNavigationBarRoot);
          },
        ),
        const WaitingOrdersListView()
      ],
    ));
  }
}
