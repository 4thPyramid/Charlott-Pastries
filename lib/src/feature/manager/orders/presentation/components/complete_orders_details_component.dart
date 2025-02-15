import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../orderDetails/presentation/view/order_details_view.dart';

class CompleteOrdersDetailsComponent extends StatelessWidget {
  const CompleteOrdersDetailsComponent({
    super.key,
    required this.orderTitle,
    this.statusColor,
    required this.orderId,
  });
  final String orderTitle;
  final Color? statusColor;
  final int orderId;
  @override
  Widget build(BuildContext context) {
    return  OrderDetailsView(
      from: "completeOrder",
      title:AppStrings.orderDetails.tr(),
      orderId:orderId ,
    );
  }
}
