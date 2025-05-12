import 'package:charlot/core/common/widgets/custom_date_filter.dart';
import 'package:charlot/core/common/widgets/failure_widget.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../logic/new_orders/new_orders_cubit.dart';
import '../logic/new_orders/new_orders_state.dart';
import '../widgets/newest_order_card_item.dart';

class NewestOrderListView extends StatefulWidget {
  const NewestOrderListView({super.key});

  @override
  State<NewestOrderListView> createState() => _NewestOrderListViewState();
}

class _NewestOrderListViewState extends State<NewestOrderListView> {
  late ManagerNewOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<ManagerNewOrdersCubit>();
    _cubit.newOrders(null, null);
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
              _cubit.newOrders(startDate, endDate);
            },
          ),
          BlocBuilder<ManagerNewOrdersCubit, NewOrdersState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('بدء التحميل...')),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: (error) =>
                    Center(child: Text('حدث خطأ: ${error.message}')),
                success: (ordersResponse) {
                  final orders = ordersResponse.orders;
                  if (orders.isEmpty) {
                    return const Center(
                      child: FailureWidget(
                        iconSize: 200,
                        title: 'No orders found',
                        subtitle: 'Wait for new orders',
                        icon: Icons.shopping_bag_outlined,
                      ),
                    );
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index];
                      return InkWell(
                        onTap: () {
                          context.push(RouterNames.newestOrderDetails, extra: {
                            'orderId': order.id,
                          });
                        },
                        child: NewestOrdersCardItem(
                          orderId: order.id,
                          orderName: order.orderType,
                          date: order.deliveryDate ?? 'No date available',
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.h);
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
