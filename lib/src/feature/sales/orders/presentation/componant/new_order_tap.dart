import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/sales/orders/presentation/cubit/sales_order_statues_cubit.dart';
import 'package:charlot/src/feature/sales/orders/presentation/widgets/orderd_list_view_for_taps_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewOrderTap extends StatelessWidget {
  const NewOrderTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SalesOrderStatuesCubit>()..getNewOrders(),
      child: BlocBuilder<SalesOrderStatuesCubit, SalesOrderStatuesState>(
        builder: (context, state) {
          return state.when(
              initial: () =>
                  const Center(child: SizedBox(child: Text("loading"))),
              loading: () =>
                  const Center(child: SizedBox(child: Text("loading"))),
              error: (error) => Center(child: Text(error.message)),
              loaded: (orders) {
                return SizedBox(
                  child: ListView.builder(
                    itemCount: orders.orders.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: OrdersTapsItemCardWidget(
                            orederId: orders.orders[index].id,
                            time: orders.orders[index].updatedAt,
                            itemCount: orders.orders[index].quantity +
                                orders.orders[index].flowerQuantity,
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
