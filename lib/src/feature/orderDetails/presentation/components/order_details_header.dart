import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/custom_app_bar.dart';
import '../../data/model/order_details_response.dart';
import 'order_details_image_header.dart';

class OrderDetailsHeader extends StatelessWidget {
  final String title;
  final VoidCallback onBackPressed;
  final List<OrderImageDetails> images;

  const OrderDetailsHeader({
    super.key,
    required this.title,
    required this.onBackPressed,
    required this.images,
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
        OrderDetailsImageHeader(
          images: images,
        ),
      ],
    );
  }
}
