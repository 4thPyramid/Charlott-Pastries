// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../widgets/build_info_field.dart';
import '../widgets/image_list_grid_view.dart';

class CompleteOrdersDetailsComponant extends StatelessWidget {
  const CompleteOrdersDetailsComponant({
    super.key,
    required this.orderTitle,
    this.statusColor,
     this.isCompleted = false,
  });
  final String orderTitle;
  final Color? statusColor;
  final bool? isCompleted ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0.r),
          margin: EdgeInsets.all(16.0.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'رقم الطلب 20',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "2025/1/16",
                            style: AppStyles.s14.copyWith(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.date_range_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: statusColor ?? AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      orderTitle,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildInfoField('اسم العميل', 'محمد عتيق'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField('رقم الجوال', '01007698234'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField('عنوان العميل', 'المنصورة حي الجامعة'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField(
                  'تفاصيل الطلب', 'تورتة عيد ميلاد دورين بالشوكولاتة'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField('السعر', '800'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField('اسم الشيف', 'احمد ماهر'),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              buildInfoField('اسم العميل', 'لما يتم تعين مندوب '),
              Divider(color: AppColors.grey, thickness: 1, height: 10.h),
              const SizedBox(height: 20),
              Text('الصور',
                  style: AppStyles.s16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  )),
              const SizedBox(height: 10),
              ImageListGridView(),
              const SizedBox(height: 20),
            ],
          ),
        ),
        if (isCompleted == false) CustomButton(width: 240.w, text: "اختر المندوب", onPressed: () {
          context.push( RouterNames.selectDeliveryBoy,);
        }),
        SizedBox(height: 40.h),
      ],
    );
  }
}
