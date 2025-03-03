import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../../../core/theme/app_colors.dart';

import '../../../../../../../../generated/app_strings.g.dart';
import '../components/delivery_details_components.dart';

class DeliveryDetailsView extends StatelessWidget {
  const DeliveryDetailsView(
      {super.key, required this.deliveryId, required this.orderId});
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
                title: AppStrings.deliveryDetails.tr(),
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
              DeliveryDetailsComponents(
                deliveryId: deliveryId,
                orderId: orderId,
              ),
            ],
          ),
        ));
  }
}
