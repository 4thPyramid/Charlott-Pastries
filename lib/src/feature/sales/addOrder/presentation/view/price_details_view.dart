import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/price_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/add_order_header.dart';
import 'package:flutter/material.dart';

class PriceDetailsView extends StatelessWidget {
  const PriceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "اضافة طلب جديد"),
          const AddOrderHeader(
            image: AppAssets.addOrder2,
            title: 'تفاصيل السعر',
          ),
          PriceForm(),
        ],
      ),
    );
  }
}
