import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'accept_and_refuse_button.dart';

class AcceptEmployeeCardItem extends StatelessWidget {
  final dynamic employee; // Change to dynamic to accept different types
  final bool isChef; // Add flag to distinguish between chef and delivery
  final Function(int) onAccept;
  final Function(int) onReject;
  const AcceptEmployeeCardItem(
      {super.key,
      required this.employee,
      required this.isChef,
      required this.onAccept,
      required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 8.w),
        margin: EdgeInsets.symmetric(vertical: 10.h),
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
            isChef ? employee.specialization.name : employee.key,
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
                child: Image.network(
                  employee.image ??
                      'https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc',
                  height: 100.h,
                  width: 85.w,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildInfoRow(
                      label: AppStrings.name.tr(),
                      value: '${employee.firstName} ${employee.lastName}'),
                  SizedBox(height: 10.h),
                  buildInfoRow(
                      label: AppStrings.phoneNumber.tr(), value: employee.phone),
                  SizedBox(height: 10.h),
                  buildInfoRow(label: AppStrings.email.tr(), value: employee.email),
                  SizedBox(height: 10.h),
                  buildInfoRow(
                      label: AppStrings.createdAt.tr(),
                      value: formatDate(employee.createdAt.toString())),
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
                  onAccept(employee.id);
                },
              ),
              SizedBox(width: 16.w),
              AcceptAndRefuseButton(
                text: 'رفض',
                backgroundColor: AppColors.red,
                onPressed: () {
                  onReject(employee.id);
                },
              ),
            ],
          )
        ]));
  }

  String formatDate(String dateString) {
    DateTime parsedDate = DateTime.parse(dateString);
    return '${parsedDate.year}-${parsedDate.month.toString().padLeft(2, '0')}-${parsedDate.day.toString().padLeft(2, '0')}';
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
          color: AppColors.greyForText,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
