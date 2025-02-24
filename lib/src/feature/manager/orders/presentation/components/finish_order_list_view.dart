import 'package:charlot/core/common/widgets/custom_date_filter.dart';
import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/delivered/delivered_order_cubit.dart';
import '../logic/delivered/delivered_order_state.dart';

class FinishOrderListView extends StatefulWidget {
  const FinishOrderListView({super.key});

  @override
  State<FinishOrderListView> createState() => _FinishOrderListViewState();
}

class _FinishOrderListViewState extends State<FinishOrderListView> {
  late DeliveredOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<DeliveredOrdersCubit>();
    _cubit.call(null, null);
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Column(
        children: [
          CustomDateFilter(
            onFilterApplied: (startDate, endDate) {
              _cubit.call(startDate, endDate);
            },
          ),
          Expanded(
            child: BlocBuilder<DeliveredOrdersCubit, DeliveredOrderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text("Loading...")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: (error) =>
                      Center(child: Text('خطأ: ${error.message}')),
                  success: (ordersResponse) {
                    if (ordersResponse.orders.isEmpty) {
                      return const Center(child: Text('No orders found'));
                    }
                    return ListView.builder(
                      itemCount: ordersResponse.orders.length,
                      itemBuilder: (context, index) => SharedOrderItemCard(
                        orderResponse: ordersResponse.orders[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
