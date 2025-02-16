import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/sales/orders/presentation/cubit/sales_order_statues_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/orders_statues_response_model.dart';
import '../widgets/orders_taps_item_card_widget.dart';

class CompleatedOrderTap extends StatelessWidget {
  const CompleatedOrderTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SalesOrderStatuesCubit>()..getCompleatedOrders(),
      child: BlocBuilder<SalesOrderStatuesCubit, SalesOrderStatuesState>(
        builder: (context, state) {
          return state.when(
              initial: () => const Center(child: Text("No orders yet")),
              loading: () =>
                  const Center(child: SizedBox(child: Text("loading"))),
              error: (error) => Center(child: Text(error.message)),
              loaded: (orders) {
               List<OrderItem> sortedOrders = List.from(orders.orders);
                sortedOrders.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));

                return SizedBox(
                  child: ListView.builder(
                    itemCount: sortedOrders.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: OrdersTapsItemCardWidget(
                            orderId: sortedOrders[index].id,
                            time: sortedOrders[index].updatedAt,
                           
                            onPressed: () {
                              context.push(
                                  "${RouterNames.salesOrderDetails}/${orders.orders[index].id}");
                            },
                          ));
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
