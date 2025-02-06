import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../orderDetails/presentation/components/order_details_image_header.dart';

class ReturnedOrderDetailsHeader extends StatelessWidget {
  final String title;
  final VoidCallback onBackPressed;

  const ReturnedOrderDetailsHeader({
    super.key,
    required this.title,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: title,
          iconLeft: Icons.arrow_back_ios,
          onPressedLeft: onBackPressed,
        ),
        const OrderDetailsImageHeader(),
      ],
    );
  }
}