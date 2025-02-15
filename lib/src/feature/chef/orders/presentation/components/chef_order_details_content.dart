import 'package:charlot/generated/app_strings.g.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderTimes(
            orderStatus: orderDetailsResponse.status,
            startAt: orderDetailsResponse.createdAt ?? "2021-01-10",
            endAt: orderDetailsResponse.deliveryDate ?? "2021-01-10",
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
          // TeamData(
          //   chefName: orderDetailsResponse.chefName,
          //   deliveryName: orderDetailsResponse.deliveryName,
          // ),
          OrderData(
            title: AppStrings.orderData.tr(),
            orderDetails: orderDetailsResponse.orderDetails ?? '',
            orderType: orderDetailsResponse.orderType ?? '',
            image: orderDetailsResponse.images.isNotEmpty
                ? orderDetailsResponse.images[0].image
                : 'https://s.itl.cat/pngfile/s/42-421036_cake-wallpaper-download-download-birthday-cake-images-hd.jpg',
          ),

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
