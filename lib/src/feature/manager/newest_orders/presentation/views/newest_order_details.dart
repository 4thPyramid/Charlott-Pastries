import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../orderDetails/presentation/view/order_details_view.dart';

class NewestOrderDetails extends StatelessWidget {
  const NewestOrderDetails({super.key, required this.orderId});
final int orderId;
  @override
  Widget build(BuildContext context) {
    return  OrderDetailsView(
      from: 'NewestOrderDetails',
      title: AppStrings.newOrderDetails.tr(),
      orderId: orderId,
    );
  }
}
