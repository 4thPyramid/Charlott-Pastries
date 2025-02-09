import 'package:flutter/material.dart';

import '../../../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../components/chef_details_components.dart';

class ChefDetailsView extends StatelessWidget {
  const ChefDetailsView({super.key, required this.chefId, required this.orderId});
final int chefId;
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
                title: "تفاصيل الشيف",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
               ChefDetailsComponents(chefId:chefId , orderId: orderId),
            ],
          ),
        ));
  }
}
