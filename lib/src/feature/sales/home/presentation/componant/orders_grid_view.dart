import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrdersGridView extends StatelessWidget {
  OrdersGridView({super.key});
  final List<GridViewmodel> gridViewmodel = [
    GridViewmodel(
      RouterNames.newOrders,
      number: "14",
      title: "طلب جديد ",
      icon: Icons.checklist,
    ),
    GridViewmodel(RouterNames.waitingOrders,
        number: "20", title: "طلب قيد التنفيذ ", icon: Icons.timelapse_sharp),
    GridViewmodel(RouterNames.completeOrdersDetails,
        number: "3", title: "طلب مكتمل ", icon: Icons.done_all),
    GridViewmodel(RouterNames.compleatedOrders,
        number: "18", title: "طلب غير مكتمل ", icon: Icons.cancel),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 120,
          ),
          itemCount: gridViewmodel.length,
          itemBuilder: (context, index) {
            return GridViewItem(
                number: gridViewmodel[index].number,
                title: gridViewmodel[index].title,
                icon: gridViewmodel[index].icon,
                onTap: () {
                  context.go(gridViewmodel[index].route);
                });
          }),
    );
  }
}

class GridViewmodel {
  final String number;
  final String title;
  final IconData icon;
  final String route;
  final int orderId;
  GridViewmodel(this.route,
      {required this.number, required this.title, required this.icon, this.orderId = 0});
}
