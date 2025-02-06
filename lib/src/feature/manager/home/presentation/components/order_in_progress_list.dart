import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../logic/in_progress_orders/in_progress_orders_cubit.dart';
import '../logic/in_progress_orders/in_progress_orders_state.dart';
import '../widgets/order_in_progress_card.dart';



class OrdersInProgressList extends StatelessWidget {
  const OrdersInProgressList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => getIt<InProgressOrdersCubit>()..call(),
      child: BlocBuilder<InProgressOrdersCubit, InProgressOrdersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('بدء التحميل...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) => Center(child: Text('حدث خطأ: ${error.message}')),
            success: (ordersResponse) {
              final orders = ordersResponse.orders;

              if (orders.isEmpty) {
                return const Center(child: Text('لا توجد طلبات قيد التنفيذ'));
              }

              return SizedBox(
                height: 120.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final order = orders[index];
                    return buildOrderCard(
                      onTap: () {
                        context.push(
                          RouterNames.ordersDetails,
                          extra: {
                            'from': "OrdersInProgressList",
                            'title': AppStrings.inProgressOrderDetails,
                            'orderId': order.id,
                          },
                        );
                      },
                      color: AppColors.lightBlue,
                      progressColor: AppColors.blue,
                      orderName: order.orderDetails??'',
                      orderType: order.orderType,
                      progress: ordersResponse.rate / 100, 
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

 
