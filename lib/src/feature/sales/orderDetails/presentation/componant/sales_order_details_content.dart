import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/client_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_price.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_times.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/cubit/sales_order_details_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../orderDetails/presentation/components/order_details_header.dart';

class SalesOrderDetailsContent extends StatelessWidget {
  const SalesOrderDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesOrderDetailsCubit, SalesOrderDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('Loading...')),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (error) => Center(child: Text('Error: ${error.message}')),
          success: (orderDetailsResponse) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderDetailsHeader(
                  title: AppStrings.orderDetails.tr(),
                  onBackPressed: () => context.pop(),
                  images: orderDetailsResponse.images,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      OrderTimes(
                        orderStatus: orderDetailsResponse.status,
                        startAt: orderDetailsResponse.deliveryDate,
                        from: orderDetailsResponse.from,
                        to: orderDetailsResponse.to,
                      ),
                      SizedBox(height: 16.h),
                      ClientData(
                        customerName: orderDetailsResponse.customerName ?? '',
                        customerPhone: orderDetailsResponse.customerPhone ?? '',
                        customerAddress:
                            orderDetailsResponse.additionalData ?? "",
                      ),
                      orderDetailsResponse.orderDetails != 'No details'
                          ? OrderData(
                              title: AppStrings.orderData.tr(),
                              orderDetails: orderDetailsResponse.orderDetails,
                              orderType: orderDetailsResponse.orderType,
                              image: orderDetailsResponse.images.isNotEmpty
                                  ? orderDetailsResponse.images[0].image
                                  : 'https://th.bing.com/th/id/OIP.Fw-199hoU0qcuFHEL9Vf8wHaLH?rs=1&pid=ImgDetMain',
                            )
                          : const SizedBox(),
                      orderDetailsResponse.description != 'No flowers'
                          ? OrderData(
                              title: AppStrings.flowerData.tr(),
                              orderDetails: '',
                              orderType: orderDetailsResponse.description ?? '',
                              image: orderDetailsResponse.image ??
                                  'https://upload.wikimedia.org/wikipedia/commons/b/ba/Flower_jtca001.jpg',
                            )
                          : const SizedBox(),
                      OrderPrice(
                        price: orderDetailsResponse.totalPrice ?? 0.0,
                        deposit: orderDetailsResponse.deposit,
                        remaining: orderDetailsResponse.remaining ?? 0.0,
                        flowerPrice: orderDetailsResponse.flowerPrice ?? 0.0,
                      ),
                      SizedBox(height: 16.h),
                      CustomButton(
                        text: "Edit Order",
                        onPressed: () {
                          context.push(RouterNames.updateOrderView, extra: {
                            "orderId": orderDetailsResponse.id,
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
