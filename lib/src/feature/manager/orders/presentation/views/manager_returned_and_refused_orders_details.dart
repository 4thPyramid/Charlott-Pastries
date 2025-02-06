import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../orderDetails/presentation/logic/order_details_cubit.dart';
import '../../../../orderDetails/presentation/logic/order_details_state.dart';
import '../widgets/returned_order_details_actions.dart';
import '../widgets/returned_order_details_content.dart';
import '../widgets/returned_order_details_header.dart';

class ReturnedAndRefusedOrderDetails extends StatelessWidget {
  const ReturnedAndRefusedOrderDetails({
    super.key,
    required this.from,
    required this.title,
    required this.orderStatus,
    required this.orderId,
  });

  final String from;
  final String title;
  final String orderStatus;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrderDetailsCubit>()..call(orderId),
      child: Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('جاري التحميل...')),
              loading: () => const Center(child: CircularProgressIndicator()),
              failure: (error) =>
                  Center(child: Text('حدث خطأ: ${error.message}')),
              success: (orderDetailsResponse) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReturnedOrderDetailsHeader(
                        title: title,
                        onBackPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      ReturnedOrderDetailsContent(
                        orderStatus: orderStatus,
                        orderDetailsResponse: orderDetailsResponse,
                      ),
                      ReturnedOrderDetailsActions(
                        onResendPressed: () {
                                context.push(RouterNames.selectDeliveryBoy, extra: {
              'orderId': orderId,
            });

                          //  resend order
                        },
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
