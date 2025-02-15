import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_row_price_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/app_strings.g.dart';


class PriceCardWidget extends StatelessWidget {
  const PriceCardWidget({
    super.key,
    required this.allPrice,
    required this.deposit,
    required this.remaining, required this.flowerPrice,
  });

  final String allPrice;
  final String deposit;
  final String remaining;
  final String flowerPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      height: 153.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          OrdersRowPriceWidget(
            priceTitle: AppStrings.totalPrice.tr(),
            price: allPrice,
          ),
          OrdersRowPriceWidget(
            priceTitle: AppStrings.deposit.tr(),
            price: deposit,
          ),
          OrdersRowPriceWidget(
            priceTitle:AppStrings.remaining.tr(),

            price: remaining,
          ),
           OrdersRowPriceWidget(
            priceTitle: AppStrings.flowerPrice.tr(),
            price: flowerPrice,
          )
        ],
      ),
    );
  }
}
