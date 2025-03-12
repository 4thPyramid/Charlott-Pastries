import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_row_price_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PriceCardWidget extends StatelessWidget {
  const PriceCardWidget({
    super.key,
    required this.allPrice,
    required this.deposit,
    required this.remaining,
    required this.flowerPrice,
    required this.cakePrice,
    required this.deliveryPrice,
    required this.orderType,
  });

  final String allPrice;
  final String deposit;
  final String remaining;
  final String flowerPrice;
  final String cakePrice;
  final String deliveryPrice;
  final String orderType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          if (orderType != "flower")
            OrdersRowPriceWidget(
              priceTitle: "Cake Price",
              price: cakePrice,
            ),
          if (orderType != "cake")
            OrdersRowPriceWidget(
              priceTitle: "Flower Price",
              price: flowerPrice,
            ),
          OrdersRowPriceWidget(
            priceTitle: "Delivery Price",
            price: deliveryPrice,
          ),
          OrdersRowPriceWidget(
            priceTitle: "Total Price",
            price: allPrice,
          ),
          OrdersRowPriceWidget(
            priceTitle: "Deposit",
            price: deposit,
          ),
          OrdersRowPriceWidget(
            priceTitle: "Remaining Balance",
            price: remaining,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
