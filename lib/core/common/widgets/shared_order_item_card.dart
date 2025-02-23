import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/app_strings.g.dart';
import '../../../src/feature/manager/orders/data/model/orders_response.dart';
import '../../routes/router_names.dart';

class SharedOrderItemCard extends StatelessWidget {
  const SharedOrderItemCard({super.key, required this.orderResponse});
  final Order orderResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 205.h,
      width: 370.w,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 1),
              blurRadius: 1,
            ),
          ]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FirstColumn(
                order: orderResponse.orderType,
                customer: orderResponse.customerName ?? 'لا يوجد',
              ),
              ThirdColumn(
                orderStatus: orderResponse.status,
                orderDate: orderResponse.deliveryDate ?? '',
                color: AppColors.green,
              ),
              CircleAvatar(
                radius: 60.r,
                backgroundImage: NetworkImage(
                  orderResponse.images.isNotEmpty ? orderResponse.images[0].image
                      :'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.123rf.com%2Fphoto_104615256_stock-vector-no-image-available-icon-flat-vector.html&psig=AOvVaw3Q6Q6Q9',
                ),
              ),
            ],
          ),
         
            CustomButton(
                width: 150.w,
                height: 30.h,
                text: AppStrings.orderDetails.tr(),
                textStyle: AppStyles.s12.copyWith(
                  color: AppColors.white,
                ),
                onPressed: () {
                  if (orderResponse.status == 'returned' ||
                      orderResponse.status == 'refused') {
                    context
                        .push(RouterNames.returnAndRefusedOrderDetails, extra: {
                      'from': orderResponse.status,
                      'title': orderResponse.status,
                      'orderStatus': orderResponse.status,
                      'orderId': orderResponse.id,
                    });
                  } else {
                    context.push(RouterNames.ordersDetails, extra: {
                      'from': orderResponse.status,
                      'title': orderResponse.status,
                      'orderStatus': orderResponse.status,
                      "orderId": orderResponse.id,
                    });
                  }
                }),
        ],
      ),
    );
  }
}

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({
    super.key,
    required this.orderStatus,
    required this.orderDate,
    this.color,
  });
  final String orderStatus;
  final String orderDate;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "حالة الطلب",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          orderStatus,
          style: AppStyles.s12.copyWith(
            fontWeight: FontWeight.w400,
            color: color ?? AppColors.green,
          ),
        ),
        SizedBox(height: 32.h),
        Text("تاريخ التسليم",
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
            )),
        SizedBox(height: 8.h),
        Row(children: [
          Icon(
            Icons.calendar_month_outlined,
            color: AppColors.darkTextGrey.withOpacity(0.7),
          ),
          Text(
            "11/11/2023",
            style: AppStyles.s12.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.darkTextGrey.withOpacity(0.7),
            ),
          ),
        ]),
      ],
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    super.key,
    required this.order,
    required this.customer,
  });
  final String order;
  final String customer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "نوع الطلب",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          order,
          style: AppStyles.s12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.darkTextGrey.withOpacity(0.7),
          ),
        ),
        SizedBox(height: 32.h),
        Text(
          "اسم العميل",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          customer,
          style: AppStyles.s12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.darkTextGrey.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
