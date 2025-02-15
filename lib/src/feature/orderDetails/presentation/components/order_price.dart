import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/price_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key, required this.price, required this.deposit, required this.remaining, required this.flowerPrice});
 final double price;
 final double  deposit;
 final double remaining;
 final double flowerPrice;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Padding(
          padding:const EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(
            title:AppStrings.orderPrice.tr(),
          ),
        ),
        const SizedBox(height: 16),
        PriceCardWidget(
          allPrice: price.toString(),
          deposit: deposit.toString(),
          remaining: remaining.toString(),
          flowerPrice: flowerPrice.toString(),
        )
      ],
    );
  }
}
