import 'package:charlot/core/common/widgets/custom_date_filter.dart';
import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/manager/orders/presentation/logic/completed/completed_order_cubit.dart';
import 'package:charlot/src/feature/manager/orders/presentation/logic/completed/completed_order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManagerCompleteOrdersListView extends StatefulWidget {
  const ManagerCompleteOrdersListView({super.key});

  @override
  State<ManagerCompleteOrdersListView> createState() =>
      _ManagerCompleteOrdersListViewState();
}

class _ManagerCompleteOrdersListViewState
    extends State<ManagerCompleteOrdersListView> {
  late CompletedOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<CompletedOrdersCubit>();
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
            child: BlocBuilder<CompletedOrdersCubit, CompletedOrderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                      child: Text('الرجاء تحديد تاريخ البداية والنهاية')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: (error) =>
                      Center(child: Text('خطأ: ${error.message}')),
                  success: (ordersResponse) {
                    if (ordersResponse.orders.isEmpty) {
                      return const Center(
                          child:
                              Text('لا توجد طلبات مكتملة في الفترة المحددة'));
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
