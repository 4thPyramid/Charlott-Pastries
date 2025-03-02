import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
            from: orderDetailsResponse.from ?? '',
            to: orderDetailsResponse.to ?? '',
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
          orderDetailsResponse.orderDetails != 'No details'
              ? OrderData(
                  title: AppStrings.orderData.tr(),
                  orderDetails: orderDetailsResponse.orderDetails ?? '',
                  orderType: orderDetailsResponse.orderType,
                  image: orderDetailsResponse.images.isNotEmpty
                      ? orderDetailsResponse.images[0].image
                      : '',
                )
              : const SizedBox(),
          orderDetailsResponse.description != 'No flowers'
              ? OrderData(
                  title: AppStrings.flowerData.tr(),
                  orderDetails: orderDetailsResponse.description,
                  orderType: orderDetailsResponse.orderType,
                  image: orderDetailsResponse.flowerImage ??
                      'https://upload.wikimedia.org/wikipedia/commons/b/ba/Flower_jtca001.jpg',
                )
              : const SizedBox(),
          OrderPrice(
            price: orderDetailsResponse.totalPrice ?? 0.0,
            deposit: orderDetailsResponse.deposit ?? 0.0,
            remaining: orderDetailsResponse.remaining ?? 0.0,
            flowerPrice: orderDetailsResponse.flowerPrice ?? 0.0,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
