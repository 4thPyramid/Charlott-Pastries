import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class ReadyProductsForm extends StatelessWidget {
  const ReadyProductsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8.0),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => const ProductCardWidget(
          image: AppAssets.cake1,
          title: 'كيكة الشوكولاتة',
          price: '100',
        ),
      ),
    );
  }
}
