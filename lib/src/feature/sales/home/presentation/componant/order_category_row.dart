import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersCategoryRow extends StatelessWidget {
  const OrdersCategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى الجديد ',
          subTitle: '50 من الطلبات الجديده',
          image: AppAssets.category1,
        ),
        SizedBox(width: 6.w),
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى قيد التنفيذ ',
          subTitle: '50 من الطلبات قيد التنفيذ',
          image: AppAssets.category2,
        ),
        SizedBox(width: 6.w),
        CategoryCardWidget(
          onTap: () {},
          title: 'اجمالى المكتمل ',
          subTitle: '50 من الطلبات المكتمله',
          image: AppAssets.category3,
        ),
      ],
    );
  }
}
