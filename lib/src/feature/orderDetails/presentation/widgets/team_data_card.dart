
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';
import 'client_item_data_row_widget.dart';

class TeamDataCard extends StatelessWidget {
  const TeamDataCard({
    super.key, required this.chefName, required this.deliveryName,
  });
final String chefName;
final String deliveryName;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 353,
        //  height: 232,
        padding:  EdgeInsets.all( 16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClientItemDataRowWidget(
                  title: AppStrings.chefName.tr(),
                  name: chefName,
                  icon: Icons.person,
                  iconColor: Colors.blue,
                ),
                       const Divider(),
                ClientItemDataRowWidget(
                  title: AppStrings.delegateName.tr(),
                  name: deliveryName,
                  icon: Icons.person,
                  iconColor: Colors.blue,
                ),
              ]),
        ));
  }
}
