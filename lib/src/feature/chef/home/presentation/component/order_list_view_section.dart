import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/presentation/logic/new_order/new_orders_cubit.dart';
import 'package:charlot/src/feature/chef/home/presentation/widget/ordres_card_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrderListViewSection extends StatelessWidget {
  const OrderListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewOrdersCubit, NewOrderState>(
      builder: (context, state) {
        return state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
            loaded: (order) => order.orders.isEmpty
                ? Center(
                    child: Text(AppStrings.noneworders.tr()),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: order.orders.length,
                    itemBuilder: (context, index) {
                      final orders = order.orders[index];
                      return InkWell(
                        onTap: () {
                          context.push(
                            RouterNames.chefOrdersDetailsView,
                            extra: {
                              'orderId': orders.id,
                              'title': AppStrings.newOrderDetails.tr()
                            },
                          );
                        },
                        child: OrdersCardItem(
                          orderName: orders.orderType,
                          orderType: orders.orderType,
                          date: orders.deliveryDate ?? AppStrings.nodateavailable.tr(),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.h);
                    },
                  ),
            error: (error) => Center(child: Text(error.message)));
      },
    );
  }
}
