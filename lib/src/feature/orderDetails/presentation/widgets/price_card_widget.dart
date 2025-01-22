import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_row_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceCardWidget extends StatelessWidget {
  const PriceCardWidget({
    super.key,
    required this.allPrice,
    required this.deposit,
    required this.remaining,
  });

  final String allPrice;
  final String deposit;
  final String remaining;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      height: 143.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          OrdersRowPriceWidget(
            priceTitle: 'السعر الاجمالي',
            price: allPrice,
          ),
          OrdersRowPriceWidget(
            priceTitle: 'العربون',
            price: deposit,
          ),
          OrdersRowPriceWidget(
            priceTitle: 'متبقي',
            price: remaining,
          )
        ],
      ),
    );
  }
}
