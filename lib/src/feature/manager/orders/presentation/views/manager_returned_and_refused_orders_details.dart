import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../orderDetails/presentation/componant/client_data.dart';
import '../../../../orderDetails/presentation/componant/order_data.dart';
import '../../../../orderDetails/presentation/componant/order_details_image_header.dart';
import '../../../../orderDetails/presentation/componant/order_price.dart';
import '../../../../orderDetails/presentation/componant/order_times.dart';
import '../../../../orderDetails/presentation/componant/team_data.dart';
import '../../../../orderDetails/presentation/widgets/order_details_section_title.dart';

class ReturnedAndRefusedOrderDetails extends StatelessWidget {
  const ReturnedAndRefusedOrderDetails(
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
            const ReasonForRejection(
              reason:
                  ' لم يتم العثور علي العنوان المدخل و لم يتم الرد علي الهاتف و لم يتم العثور علي العنوان المدخل و لم يتم الرد علي الهاتف',
            ),
            SizedBox(height: 16.h),
            const OrderPrice(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                text: 'اعاده ارسال الطلب',
                onPressed: () {},
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

class ReasonForRejection extends StatelessWidget {
  const ReasonForRejection({super.key, required this.reason});
  final String reason;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 16.w,
          ),
          child: const OrderDetailsSectionsTitleWidget(
            title: 'سبب الرفض ',
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          width: 353.w,
          // height: 120.h,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Text(
            reason,
            style: TextStyle(fontSize: 12.sp),
          ),
        )
      ],
    );
  }
}
