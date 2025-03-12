import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrdersRowPriceWidget extends StatelessWidget {
  const OrdersRowPriceWidget({
    super.key,
    required this.priceTitle,
    required this.price,
    this.color,
  });
  final String priceTitle;
  final String price;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 6, bottom: 6),
      child: Row(
        children: [
          Text(priceTitle, style: AppStyles.s14.copyWith(color: color)),
          const Spacer(),
          Text(
            "$price AED",
            style: AppStyles.s14
                .copyWith(fontWeight: FontWeight.w700, color: color),
          )
        ],
      ),
    );
  }
}
