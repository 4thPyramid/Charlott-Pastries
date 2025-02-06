import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/presentation/logic/cubit/orders_type_cubit.dart';
import 'package:charlot/src/feature/chef/home/presentation/widget/ordres_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrderListViewSection extends StatelessWidget {
  const OrderListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersTypeCubit, OrdersTypeState>(
      builder: (context, state) {
        return state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
            loaded: (order) => ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: order.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.push(
                          RouterNames.ChefOrdersDetailsView,
                        );
                      },
                      
                      child:  OrdersCardItem(
                        orderName: order[index].orders?[index].orderDetails??' تورتة عيد ميلاد موسي',
                        orderType: order[index].orders?[index].orderType ?? "حلويات غربيه",
                        date: order[index].orders?[index].deliveryDate ?? "12/12/2021",
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
