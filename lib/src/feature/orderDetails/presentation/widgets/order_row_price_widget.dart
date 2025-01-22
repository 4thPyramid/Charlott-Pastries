import 'package:charlot/core/utils/app_styles.dart';
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
            "${price} ريال",
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
