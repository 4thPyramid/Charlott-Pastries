import 'package:charlot/src/feature/manager/orders/presentation/widgets/refused_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/services/service_locator.dart';
import '../logic/refused/refused_order_cubit.dart';
import '../logic/refused/refused_order_state.dart';

class RefusedOrderListView extends StatelessWidget {
  const RefusedOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RefusedOrdersCubit>()..call(),
      child: BlocBuilder<RefusedOrdersCubit, RefusedOrderState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
                child: Text('لا توجد بيانات حتى الآن')), 
            loading: () => const Center(
                child: CircularProgressIndicator()), 
            failure: (error) =>
                Center(child: Text('حدث خطأ: ${error.message}')), 
            success: (refusedOrderResponse) {
              if (refusedOrderResponse.orders.isEmpty) {
                return const Center(
                    child:
                        Text('لا توجد طلبات مرفوضة'));
              }
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shrinkWrap: true,
                  itemCount: refusedOrderResponse.orders.length,
                  itemBuilder: (context, index) {
                    final order = refusedOrderResponse.orders[index];
                    return RefusedOrderCard(
                        refusedOrderResponse: order); 
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
