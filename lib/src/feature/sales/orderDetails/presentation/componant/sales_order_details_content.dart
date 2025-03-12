import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
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
  const SalesOrderDetailsContent({super.key, required this.orderId});
  final int orderId;

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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "# $orderId",
                          style: AppStyles.s20.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      OrderTimes(
                        orderStatus: orderDetailsResponse.status,
                        startAt: orderDetailsResponse.deliveryDate,
                        from: orderDetailsResponse.from,
                        to: orderDetailsResponse.to,
                        creationDate: orderDetailsResponse.createdAt ?? '',
                      ),
                      SizedBox(height: 16.h),
                      ClientData(
                        customerName: orderDetailsResponse.customerName ?? '',
                        customerPhone: orderDetailsResponse.customerPhone ?? '',
                        customerAddress: orderDetailsResponse.mapDesc ?? "",
                        customerBuilding:
                            orderDetailsResponse.additionalData ?? '',
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
                        cakePrice: orderDetailsResponse.cakePrice ?? 0.0,
                        deliveryPrice:
                            orderDetailsResponse.deliveryPrice ?? 0.0,
                        orderType: orderDetailsResponse.orderType,
                      ),
                      SizedBox(height: 16.h),
                      orderDetailsResponse.status == "new" ||
                              orderDetailsResponse.status ==
                                  "manager accepted" ||
                              orderDetailsResponse.status == "chef waiting" ||
                              orderDetailsResponse.status == "chef approved"
                          ? CustomButton(
                              text: "Edit Order",
                              onPressed: () {
                                context
                                    .push(RouterNames.updateOrderView, extra: {
                                  "orderId": orderDetailsResponse.id,
                                  "orderType": orderDetailsResponse.orderType,
                                });
                              },
                            )
                          : const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "You can't edit this order",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                      SizedBox(height: 16.h),
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
