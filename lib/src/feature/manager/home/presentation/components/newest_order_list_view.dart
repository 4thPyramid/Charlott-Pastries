import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../generated/app_strings.g.dart';
import '../logic/new_orders/new_orders_cubit.dart';
import '../logic/new_orders/new_orders_state.dart';
import '../widgets/newest_order_card_item.dart';
class NewestOrderListView extends StatelessWidget {
  const NewestOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => getIt<ManagerNewOrdersCubit>()..newOrders(),
      child: BlocBuilder<ManagerNewOrdersCubit, NewOrdersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('بدء التحميل...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) => Center(child: Text('حدث خطأ: ${error.message}')),
            success: (ordersResponse) {
              final orders = ordersResponse.orders; 
              if (orders.isEmpty) {
                return  Center(child: Text(AppStrings.noCurrentOrders.tr()));
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
                      date: order.deliveryDate ?? 'لا يوجد تاريخ',
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
    );
  }
}