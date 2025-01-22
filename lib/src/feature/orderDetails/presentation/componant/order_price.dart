import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/price_card_widget.dart';
import 'package:flutter/material.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(
            title: 'سعر الطلب',
          ),
        ),
        SizedBox(height: 16),
        PriceCardWidget(
          allPrice: '800',
          deposit: '200',
          remaining: '600',
        )
      ],
    );
  }
}
