import 'package:charlot/core/common/widgets/failure_widget.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/sales/orders/presentation/cubit/sales_order_statues_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../widgets/orders_taps_item_card_widget.dart';

class PendingOrderTap extends StatelessWidget {
  const PendingOrderTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SalesOrderStatuesCubit>()..getPendingOrders(),
      child: BlocBuilder<SalesOrderStatuesCubit, SalesOrderStatuesState>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                const Center(child: SizedBox(child: Text("loading"))),
            loading: () =>
                const Center(child: SizedBox(child: Text("loading"))),
            error: (error) => Center(child: Text(error.message)),
            loaded: (orders) {
              if (orders.orders.isEmpty) {
                return const FailureWidget(
                  title: "No Orders With The Chef",
                  icon: Icons.add_shopping_cart,
                  subtitle: 'Wait for new orders',
                );
              }
              return SizedBox(
                child: ListView.builder(
                  itemCount: orders.orders.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: OrdersTapsItemCardWidget(
                        orderId: orders.orders[index].id,
                        time: orders.orders[index].updatedAt,
                        onPressed: () {
                          context.push(
                              "${RouterNames.salesOrderDetails}/${orders.orders[index].id}");
                        },
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
