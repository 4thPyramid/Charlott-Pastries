import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../routes/router_names.dart';

class SharedOrderItemCard extends StatelessWidget {
  const SharedOrderItemCard(
      {super.key,
      this.orderStatusColor,
      required this.id,
      required this.orderTitle,
      required this.pageTitle});
  final Color? orderStatusColor;
  final int id;
  final String orderTitle;
  final String pageTitle;
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
              offset: Offset(0, 1),
              blurRadius: 1,
            ),
          ]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const FirstColumn(
                order: '',
                customer: '',
              ),
              ThirdColumn(
                orderStaus: '',
                orderDate: '',
                color: orderStatusColor,
              ),
              CircleAvatar(
                radius: 60.r,
                backgroundImage: const AssetImage(AppAssets.home,),
              
              ),
            ],
          ),
          CustomButton(
              width: 150.w,
              height: 30.h,
              text: "عرض التفاصيل",
              onPressed: () {
                context.push(RouterNames.ordersDetails, extra: {
                  'from': pageTitle,
                  'title': pageTitle,

               
                });
              }),
        ],
      ),
    );
  }
}

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({
    super.key,
    required this.orderStaus,
    required this.orderDate,
    this.color,
  });
  final String orderStaus;
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
          "طلب جديد",
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
          "تورتة عيد ميلاد",
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
          "محمد عبد الله",
          style: AppStyles.s12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.darkTextGrey.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
