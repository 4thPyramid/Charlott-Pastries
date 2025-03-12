import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../orderDetails/presentation/components/order_details_header.dart';
import '../../../chef_orders_status/presentation/logic/chef_order_details/chef_order_details_cubit.dart';
import '../../../chef_orders_status/presentation/logic/chef_order_details/chef_order_details_state.dart';
import '../components/chef_order_details_action.dart';
import '../components/chef_order_details_content.dart';
import '../logic/order_status_cubit.dart';

class ChefOrdersDetailsView extends StatelessWidget {
  const ChefOrdersDetailsView(
      {super.key, required this.orderId, required this.title});
  final int orderId;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ChefOrderDetailsCubit>()..getChefOrderDetails(orderId),
        ),
        BlocProvider(
          create: (context) => getIt<OrderStatusCubit>(),
        )
      ],
      child: Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: BlocBuilder<ChefOrderDetailsCubit, ChefOrderDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text(AppStrings.loading.tr())),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) => Center(
                  child: Text(
                      '${AppStrings.anerroroccurred.tr()}: ${error.message}')),
              loaded: (orderDetailsResponse) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrderDetailsHeader(
                        title: title,
                        onBackPressed: () {
                          Navigator.pop(context);
                        },
                        images: orderDetailsResponse.images,
                      ),
                      ChefOrderDetailsContent(
                        orderDetailsResponse: orderDetailsResponse,
                        orderId: orderId,
                      ),
                      ChefOrderDetailsActions(
                        orderStatus: orderDetailsResponse.status,
                        orderId: orderId,
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
