import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/price_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/add_order_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PriceDetailsView extends StatelessWidget {
  const PriceDetailsView({super.key, required this.orderId});
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             CustomAppBar(title: "addNewOrder".tr()),
             AddOrderHeader(
              image: AppAssets.addOrder2,
              title: 'priceDetails'.tr(),
            ),
            PriceForm(
              orderId: orderId,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
