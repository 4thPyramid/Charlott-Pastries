import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/price_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key, required this.price, required this.deposit, required this.remaining});
 final double price;
 final double  deposit;
 final double remaining;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(
            title:AppStrings.orderPrice,
          ),
        ),
        const SizedBox(height: 16),
        PriceCardWidget(
          allPrice: price.toString(),
          deposit: deposit.toString(),
          remaining: remaining.toString(),
        )
      ],
    );
  }
}
