import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/quantity_selector.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/ready_order_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyOrderContentWidget extends StatelessWidget {
  const ReadyOrderContentWidget({
    super.key,
    required this.orderImage,
    required this.orderName,
    required this.orderPrice,
    this.orderDescription,
    required this.onTap,
    required this.branch,
  });
  final String orderImage;
  final String orderName;
  final String orderPrice;
  final String? orderDescription;
  final void Function() onTap;
  final String branch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100.h),
          const ReadyOrderImageWidget(),
          SizedBox(height: 50.h),
          Text(orderName, style: AppStyles.s24),
          SizedBox(height: 10.h),
          const QuantitySelector(),
          SizedBox(height: 10.h),
          Text(
            "وصف المنتج",
            style: AppStyles.s20.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.h),
          Text(orderDescription ?? "لا يوجد وصف للمنتج",
              style: AppStyles.s14.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 20.h),
          Text(branch,
              style: AppStyles.s20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 20.h),
          Center(
            child: CustomButton(
              text: "التالي",
              onPressed: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
