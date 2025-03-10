import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/price_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/add_order_header.dart';
import 'package:flutter/material.dart';

class PriceDetailsView extends StatelessWidget {
  const PriceDetailsView(
      {super.key,
      required this.orderId,
      required this.isSameday,
      required this.orderType});
  final int orderId;
  final String isSameday;
  final String orderType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                title: "Add New Order",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                }),
            const AddOrderHeader(
              image: AppAssets.addOrder2,
              title: 'Price Details',
            ),
            PriceForm(
              orderId: orderId,
              isSameday: isSameday,
              orderType: orderType,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
