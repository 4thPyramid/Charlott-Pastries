import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/returned/returned_order_cubit.dart';
import '../logic/returned/returned_order_state.dart';

class ReturnedOrdersListView extends StatelessWidget {
  const ReturnedOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReturnedOrdersCubit>()..call(),
      child: BlocBuilder<ReturnedOrdersCubit, ReturnedOrderState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) => Center(child: Text('Error: ${error.message}')),
            success: (ordersResponse) {
                  if (ordersResponse.orders.isEmpty) {
                return const Center(
                    child:
                        Text('لا توجد طلبات مرتجعه'));
              }
              return Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    itemCount: ordersResponse.orders.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: SharedOrderItemCard(
                          
                          orderResponse: ordersResponse.orders[index],
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
