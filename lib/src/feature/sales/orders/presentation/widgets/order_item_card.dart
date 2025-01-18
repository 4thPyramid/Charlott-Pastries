import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295.h,
      width: 370.w,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
              blurRadius: 1,
            ),
          ]),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          const FirstColumn(
            image: '',
            order: '',
            customer: '',
          ),
          ButtonColumn(
            onPressed: () {
              context.go(
                RouterNames.completeOrdersDetails,
                extra: {
                  'orderTitle': 'طلب مكتمل',
                  'pageTitle': 'تفاصيل الطلب المكتمل',
                  'orderStatusColor': AppColors.green,
                },
              );
            },
          ),
          ThirdColumn(
            orderStaus: '',
            orderDate: '',
            color: color,
          ),
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
        SizedBox(height: 40.h),
        Text("تم تاكيد الطلب",
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
              color: color ?? AppColors.green,
            )),
        SizedBox(height: 50.h),
        Text(
          "حالة الطلب",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        const Text("طلب جديد"),
        SizedBox(height: 32.h),
        Text("تاريخ التسليم",
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
            )),
        SizedBox(height: 8.h),
        Row(children: [
          const Icon(
            Icons.calendar_month_outlined,
            color: AppColors.greyForText,
          ),
          Text(
            "11/11/2023",
            style: AppStyles.s14,
          ),
        ]),
      ],
    );
  }
}

class ButtonColumn extends StatelessWidget {
  const ButtonColumn({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
            width: 150.w,
            height: 30.h,
            text: "عرض التفاصيل",
            onPressed: onPressed),
        SizedBox(height: 15.h),
      ],
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    super.key,
    required this.image,
    required this.order,
    required this.customer,
  });
  final String image;
  final String order;
  final String customer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        AppImageView(
          AppAssets.logo,
          height: 73.h,
        ),
        SizedBox(height: 20.h),
        Text(
          "نوع الطلب",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        const Text("تورتة عيد ميلاد"),
        SizedBox(height: 20.h),
        Text(
          "اسم العميل",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        const Text("محمد عبد الله"),
      ],
    );
  }
}
