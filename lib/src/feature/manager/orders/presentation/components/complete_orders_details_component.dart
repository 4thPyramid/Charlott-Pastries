import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_styles.dart';

class CompleteOrdersDetailsComponant extends StatelessWidget {
  const CompleteOrdersDetailsComponant({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: const Text(
                  'تم اكتمال الطلب',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildInfoField('اسم العميل', 'محمد عتيق'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('رقم الجوال', '01007698234'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('عنوان العميل', 'المنصورة حي الجامعة'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('تفاصيل الطلب', 'تورتة عيد ميلاد دورين بالشوكولاتة'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('السعر', '800'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('اسم الشيف', 'احمد ماهر'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          _buildInfoField('اسم المندوب', 'احمد سلمان'),
          Divider(color: AppColors.grey, thickness: 1, height: 10.h),
          const SizedBox(height: 20),
          Text('الصور',
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              )),
          const SizedBox(height: 10),
          GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(4, (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppAssets.home,
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          CustomButton(
              width: double.infinity, text: "اختر الدليفرى", onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildInfoField(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$label: ',
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              )),
          const Spacer(),
          Expanded(
            child: Text(value,
                style: AppStyles.s16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                )),
          ),
        ],
      ),
    );
  }
}
