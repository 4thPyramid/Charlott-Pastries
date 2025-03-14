import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/client_data_card.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientData extends StatelessWidget {
  const ClientData({
    super.key,
    required this.customerName,
    required this.customerPhone,
    required this.customerAddress,
    required this.customerBuilding,
  });
  final String customerName;
  final String customerPhone;
  final String customerAddress;
  final String customerBuilding;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(
              title: AppStrings.clientData.tr()),
        ),
        SizedBox(height: 16.h),
        ClientDataCard(
          name: customerName,
          phone: customerPhone,
          address: customerAddress,
          building: customerBuilding,
        ),
      ],
    );
  }
}
