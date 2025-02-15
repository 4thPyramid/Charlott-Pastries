import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/order_details_response.dart';
import 'client_data.dart';
import 'order_data.dart';
import 'order_price.dart';
import 'order_times.dart';
import 'team_data.dart';

class OrderDetailsContent extends StatelessWidget {
  final OrderDetailsResponse orderDetailsResponse;

  const OrderDetailsContent({
    super.key,
    required this.orderDetailsResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderTimes(
            orderStatus: orderDetailsResponse.status,
            startAt: orderDetailsResponse.createdAt,
            endAt: orderDetailsResponse.deliveryDate ?? '2024-12-12',
          ),
          SizedBox(height: 16.h),
          ClientData(
            customerName:
                orderDetailsResponse.customerName ?? 'لم يتم اضافه اسم',
            customerPhone:
                orderDetailsResponse.customerPhone ?? 'لم يتم اضافه رقم',
            customerAddress:
                orderDetailsResponse.additionalData ?? 'لم يتم اضافه عنوان',
          ),
          TeamData(
            chefName: orderDetailsResponse.chefName,
            deliveryName: orderDetailsResponse.deliveryName,
          ),
          OrderData(
            orderDetails:
                orderDetailsResponse.orderDetails ?? 'لم يتم اضافه تفاصيل',
            orderType: orderDetailsResponse.orderType,
            image: orderDetailsResponse.images.isNotEmpty
                ? orderDetailsResponse.images[0].image
                : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.123rf.com',
          ),
          OrderPrice(
            price: orderDetailsResponse.price ?? 0.0,
            deposit: orderDetailsResponse.deposit ?? 0.0,
            remaining: orderDetailsResponse.remaining ?? 0.0,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
