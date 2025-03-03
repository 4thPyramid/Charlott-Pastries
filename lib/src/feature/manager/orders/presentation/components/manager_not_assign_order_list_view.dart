import 'package:charlot/core/common/widgets/custom_date_filter.dart';
import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/not_assign/not_assign_order_cubit.dart';
import '../logic/not_assign/not_assign_order_state.dart';

class ManagerNotAssignOrdersListView extends StatefulWidget {
  const ManagerNotAssignOrdersListView({super.key});

  @override
  State<ManagerNotAssignOrdersListView> createState() =>
      _ManagerNotAssignOrdersListViewState();
}

class _ManagerNotAssignOrdersListViewState
    extends State<ManagerNotAssignOrdersListView> {
  late NotAssignOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<NotAssignOrdersCubit>();
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
            child: BlocBuilder<NotAssignOrdersCubit, NotAssignOrderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text("Loading...")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: (error) =>
                      Center(child: Text('Error: ${error.message}')),
                  success: (ordersResponse) {
                    if (ordersResponse.orders.isEmpty) {
                      return const Center(child: Text('No orders found')); 
                    }
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10.w,),
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
