
import 'package:flutter/material.dart';

import '../../../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../../../core/theme/app_colors.dart';

import '../components/delivery_details_components.dart';

class SalesDeliveryDetailsView extends StatelessWidget {
  const SalesDeliveryDetailsView({super.key, required this.deliveryId, required this.orderId});
final int deliveryId;
final int orderId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "تفاصيل المندوب",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
               SalesDeliveryDetailsComponents(deliveryId: deliveryId, orderId: orderId,),
            ],
          ),
        ));
  }
}
