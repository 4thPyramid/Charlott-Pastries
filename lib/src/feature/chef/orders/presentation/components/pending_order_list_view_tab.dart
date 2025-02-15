import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/format_data_function.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../chef_orders_status/data/models/order_types_response.dart';
import '../../../chef_orders_status/presentation/logic/orders_type/order_types_cubit.dart';
import '../../../chef_orders_status/presentation/logic/orders_type/order_types_state.dart';

class PendingOrderListViewTab extends StatelessWidget {
  const PendingOrderListViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PendingOrdersCubit>()..getPendingOrders(),
        child: BlocBuilder<PendingOrdersCubit, OrdersTypeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
              loaded: (data) => _buildOrdersList(context, data.orders),
              error: (error) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      error.message,
                      style: AppStyles.s16.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.h),
                    CustomButton(
                      height: 40.h,
                      width: 120.w,
                      text: AppStrings.tryagain.tr(),
                      onPressed: () {
                        context.read<PendingOrdersCubit>().getPendingOrders();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget _buildOrdersList(BuildContext context, List<OrderType> orders) {
    if (orders.isEmpty) {
      return Center(
        child: Text(
          AppStrings.therearenoorders.tr(),
          style: AppStyles.s16,
        ),
      );
    }

    return ListView.builder(
      itemCount: orders.length,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      itemBuilder: (context, index) {
        final order = orders[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: ListTile(
            title: Text(
              '${AppStrings.order.tr()} #${order.id}',
              style: AppStyles.s16,
            ),
            subtitle: Text(
              '${formatDate(order.updatedAt.toString())}',

              style: AppStyles.s14.copyWith(
                color: AppColors.whiteGreyForText,
              ),
            ),
            trailing: CustomButton(
              height: 30.h,
              width: 120.w,
              text: AppStrings.showdetails.tr(),
              textStyle: AppStyles.s16.copyWith(
                color: AppColors.primaryColor,
              ),
              backgroundColor: AppColors.scaffoldColor,
              onPressed: () {
                context.push(
                  RouterNames.chefOrdersDetailsView,
                  extra: {
                    'title': AppStrings.orderdetailsarepending.tr(),
                    'orderId': order.id,
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
