import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/client_data_card.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClientData extends StatelessWidget {
  const ClientData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(title: AppStrings.clientData),
        ),
        SizedBox(height: 16.h),
        const ClientDataCard(
          name: 'محمد عمرو عبدالله',
          phone: '01040677295',
          address: 'المنصوره،حي الجامعه،شارع مكه',
        ),
      ],
    );
  }
}
