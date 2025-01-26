
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'accept_and_refuse_button.dart';

class AcceptEmployeeCardItem extends StatelessWidget {
  const AcceptEmployeeCardItem({
    super.key, required this.title, required this.image, required this.name, required this.phone, required this.email, required this.date,
  });
  final String title;
  final String image;
  final String name;
  final String phone;
  final String email;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 10.w),
        margin: EdgeInsets.symmetric(vertical: 10.h, ),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
           title,
            style: AppStyles.s20.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildInfoRow(label: 'الاسم ', value: name),
                  SizedBox(height: 10.h),
                  buildInfoRow(label: ' رقم الجوال', value:phone),
                  SizedBox(height: 10.h),
                  buildInfoRow(
                      label: 'البريد الالكتروني',
                      value: email),
                  SizedBox(height: 10.h),
                  buildInfoRow(label: 'تاريخ تقديم الطلب', value: date),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
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
        ]));
  }
}

Widget buildInfoRow({required String label, required String value}) {
  return Row(
    children: [
      Text(
        "$label :",
        style: AppStyles.s12.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(width: 10.w),
      Text(
        value,
        style: AppStyles.s12.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
