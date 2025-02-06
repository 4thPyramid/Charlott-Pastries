import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';
import '../widgets/order_details_section_title.dart';
import '../widgets/team_data_card.dart';

class TeamData extends StatelessWidget {
  const TeamData({super.key, required this.chefName, required this.deliveryName});
  final String chefName;
  final String deliveryName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: OrderDetailsSectionsTitleWidget(title: AppStrings.workTeam),
        ),
        SizedBox(height: 16.h),
         TeamDataCard(
          chefName:chefName ,
          deliveryName: deliveryName,
        ),
      ],
    );
  }
}
