
import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../orderDetails/presentation/components/client_data.dart';
import '../../../../orderDetails/presentation/components/order_data.dart';
import '../../../../orderDetails/presentation/components/order_price.dart';
import '../../../../orderDetails/presentation/components/order_times.dart';
import '../../../chef_orders_status/data/models/chef_order_details.dart';

class ChefOrderDetailsContent extends StatelessWidget {
  final ChefOrderDetails orderDetailsResponse;

  const ChefOrderDetailsContent({
    super.key,
    required this.orderDetailsResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderTimes(
          orderStatus: orderDetailsResponse.status,
          startAt: orderDetailsResponse.createdAt??"2021-01-10",
          endAt: orderDetailsResponse.deliveryDate ?? "2021-01-10",
        ),
        SizedBox(height: 16.h),
        ClientData(
          customerName: orderDetailsResponse.customerName ?? AppStrings.nonamehasbeenadded.tr(),
          customerPhone: orderDetailsResponse.customerPhone ?? AppStrings.nonumberhasbeenadded.tr(),
          customerAddress: orderDetailsResponse.additionalData ?? AppStrings.noaddresshasbeenadded.tr(),
        ),
        // TeamData(
        //   chefName: orderDetailsResponse.chefName,
        //   deliveryName: orderDetailsResponse.deliveryName,
        // ),
        OrderData(
          orderDetails: orderDetailsResponse.orderDetails??'',
          orderType: orderDetailsResponse.orderType ?? 'Unknown',
          quantity: orderDetailsResponse.quantity??0,
        ),
        OrderPrice(
          price: orderDetailsResponse.price ?? 0.0,
          deposit: orderDetailsResponse.deposit??0.0,
          remaining: orderDetailsResponse.remaining ?? 0.0,
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}