import 'package:charlot/src/feature/manager/orders/data/model/refused_orders_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_styles.dart';

class RefusedOrderCard extends StatelessWidget {
  const RefusedOrderCard({super.key, required this.refusedOrderResponse, });
final RefusedOrder refusedOrderResponse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child:  InkWell(
          onTap: () {
            context.push(
              RouterNames.returnAndRefusedOrderDetails,
              extra: {
                'from': 'refusedOrder',
                'title': "تفاصيل الطلب المرفوض",
                'orderStatus': 'طلب مرفوض',
                'orderId': refusedOrderResponse.id,
              },
            );
          },
        
        child: SizedBox(
          height: 54.h,
          width: 354.w,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                AppAssets.rejectImage,
                  fit: BoxFit.fill,
                  height: 54.h,
                  width: 54.w,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      text: refusedOrderResponse.status,
                      style: AppStyles.s14.copyWith(color: Colors.black),
                      children: [
                        TextSpan(
                            text: refusedOrderResponse.orderType,
                            style: AppStyles.s14.copyWith(color: AppColors.greyForText)),
                      ],
                    ),
                  ),
                  Text(refusedOrderResponse.timeDifference, style: AppStyles.s12.copyWith(
                      color: AppColors.greyForText,
                      fontWeight: FontWeight.w400
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}