import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/src/feature/sales/orders/presentation/widgets/order_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleatedOrdersListView extends StatelessWidget {
  const CompleatedOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SharedOrderItemCard(
                orderStatusColor: Colors.green,
              ),
            );
          },
        ),
      ),
    );
  }
}
