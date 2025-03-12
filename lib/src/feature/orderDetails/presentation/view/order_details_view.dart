import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../components/order_details_actions.dart';
import '../components/order_details_content.dart';
import '../components/order_details_header.dart';
import '../logic/accept_order/accept_order_cubit.dart';
import '../logic/order_details_cubit.dart';
import '../logic/order_details_state.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({
    super.key,
    required this.from,
    required this.title,
    required this.orderId,
    this.deliveryBoyId,
  });

  final String from;
  final int orderId;
  final String title;
  final int? deliveryBoyId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OrderDetailsCubit>()..call(orderId),
        ),
        BlocProvider(
          create: (context) => getIt<AcceptOrderCubit>(),
        )
      ],
      child: Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text(AppStrings.loading.tr())),
              loading: () => const Center(child: CircularProgressIndicator()),
              failure: (error) =>
                  Center(child: Text('Error: ${error.message}')),
              success: (orderDetailsResponse) {
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
                      OrderDetailsContent(
                        orderDetailsResponse: orderDetailsResponse,
                        orderId: orderId,
                      ),
                      OrderDetailsActions(
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
