import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrdersRowPriceWidget extends StatelessWidget {
  const OrdersRowPriceWidget({
    super.key,
    required this.priceTitle,
    required this.price,
  });
  final String priceTitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 16),
      child: Row(
        children: [
          Text(priceTitle, style: AppStyles.s14),
          const Spacer(),
          Text(
            "$price ${AppStrings.aDE.tr()}",
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
