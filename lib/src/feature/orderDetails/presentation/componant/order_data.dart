import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_datails_card_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';

class OrderData extends StatelessWidget {
  const OrderData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16, top: 16),
          child: OrderDetailsSectionsTitleWidget(
            title: 'بيانات الطلب',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: OrderDetailsCardWidget(
            order: '',
            size: 'متوسط',
            directions: '90',
            notes:
                'jkjsfj sdjgkfjsk fsdfsfdsfsfdsfdsfb rtergdfgd  sjgdfnks lgdjsljgk lasdkglfjls lkdlfglsgj dfgfljg fkgdfjkj fkgldkl kf kfdgldkl ',
            flowerType: 'بوكيه ورد ابيض',
          ),
        ),
      ],
    );
  }
}
