import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_assets.dart';
import '../widgets/accept_employee_card_item.dart';

class AcceptEmployeeComponents extends StatelessWidget {
  const AcceptEmployeeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const AcceptEmployeeCardItem(
            title: 'شيف',
            image: AppAssets.chefImage,
            name: 'محمد علي ',
            phone: '0102030303',
            email: 'karimelsayed@gmail.com',
            date: '12/22/2024',
          );
        });
  }
}
