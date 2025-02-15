import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/client_data_card.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/app_strings.g.dart';


class ClientData extends StatelessWidget {
  const ClientData({super.key, required this.customerName, required this.customerPhone, required this.customerAddress});
final String customerName;
final String customerPhone;
final String customerAddress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(title: AppStrings.clientData),
        ),
        SizedBox(height: 16.h),
         ClientDataCard(
          name: customerName,
          phone: customerPhone,
          address: customerAddress,
        ),
      ],
    );
  }
}
