import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../orderDetails/data/model/order_details_response.dart';
import '../../../../orderDetails/presentation/components/client_data.dart';
import '../../../../orderDetails/presentation/components/order_data.dart';
import '../../../../orderDetails/presentation/components/order_price.dart';
import '../../../../orderDetails/presentation/components/order_times.dart';
import '../../../../orderDetails/presentation/components/team_data.dart';
import 'reason_for_reject_container.dart';

class ReturnedOrderDetailsContent extends StatelessWidget {
  final String orderStatus;
  final OrderDetailsResponse orderDetailsResponse;

  const ReturnedOrderDetailsContent({
    super.key,
    required this.orderStatus,
     required this.orderDetailsResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderTimes(
          orderStatus: orderStatus,
          startAt:orderDetailsResponse.createdAt,
          endAt: orderDetailsResponse.deliveryDate ?? '2024-12-12',
        ),
        SizedBox(height: 16.h),
         ClientData(
          customerName:  orderDetailsResponse.customerName ?? 'لم يتم اضافه اسم',
          customerPhone: orderDetailsResponse.customerPhone ?? 'لم يتم اضافه رقم',
          customerAddress: orderDetailsResponse.additionalData ?? 'لم يتم اضافه عنوان',
        ),
         TeamData(
          chefName: orderDetailsResponse.chefName,
          deliveryName: orderDetailsResponse.deliveryName,
        ),
         OrderData(
          orderType: orderDetailsResponse.orderType,
          orderDetails:orderDetailsResponse.orderDetails??'لم يتم اضافه تفاصيل',
          quantity: orderDetailsResponse.quantity,
        ),
        ReasonForRejection(
          reason:orderDetailsResponse.rejectionCause??orderDetailsResponse.problem ??'لم يتم اضافه سبب',
        ),
        SizedBox(height: 16.h),
         OrderPrice(
          price: orderDetailsResponse.price ?? 0.0,
          deposit: orderDetailsResponse.deposit??0.0,
          remaining: orderDetailsResponse.remaining ?? 0.0,
        ),
      ],
    );
  }
}