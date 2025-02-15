import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/shared_order_item_card.dart';
import '../../../../../../core/services/service_locator.dart';
import '../logic/not_assign/not_assign_order_cubit.dart';
import '../logic/not_assign/not_assign_order_state.dart';

class ManagerNotAssignOrdersListView extends StatelessWidget {
  const ManagerNotAssignOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotAssignOrdersCubit>()..call(),
      child: BlocBuilder<NotAssignOrdersCubit, NotAssignOrderState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) => Center(child: Text('Error: ${error.message}')),
            success: (ordersResponse) {
              if (ordersResponse.orders.isEmpty) {
                return const Center(child: Text('لا توجد طلبات '));
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
