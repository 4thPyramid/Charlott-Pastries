import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/choose_order_type.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/add_order_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddOrderViewFirst extends StatelessWidget {
  const AddOrderViewFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomAppBar(
                title: "addNewOrder".tr(),
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
            ),
            AddOrderHeader(
              image: AppAssets.addOrder1,
              title: 'orderData'.tr(),
            ),
            const ChooseOrderType(),
          ],
        ),
      ),
    );
  }
}
