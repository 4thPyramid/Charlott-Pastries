import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/client_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_details_image_header.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_price.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_times.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../manager/accept_employee/presentation/widgets/accept_and_refuse_button.dart';
import '../componant/team_data.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView(
      {super.key,
      required this.from,
      required this.title,
      required this.orderStatus});
  final String from;
  final String title;
  final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyForSelectTap,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              title: title,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
            const OrderDetailsImageHeader(),
            OrderTimes(
              orderStatus: orderStatus,
            ),
            SizedBox(height: 16.h),
            const ClientData(),
            const TeamData(),
            const OrderData(),
            const OrderPrice(),
                        SizedBox(height: 16.h),

            if (orderStatus == "طلب مكتمل")
             Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: 'اختر المندوب ',
                  onPressed: () {},
                ),
              )
            else if (orderStatus == "طلب جديد")
               Row(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              AcceptAndRefuseButton(
                text: 'قبول',
                backgroundColor: AppColors.green,
                onPressed: () {
                },
              ),
              SizedBox(width: 16.w),
              AcceptAndRefuseButton(
                text: 'رفض',
                backgroundColor: AppColors.red,
                onPressed: () {
                },
              ),
            ],
          )
            else
                SizedBox(height: 16.h),

            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
