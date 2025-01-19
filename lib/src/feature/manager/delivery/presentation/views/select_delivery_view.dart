import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../components/select_delivery_list_view.dart';

class SelectDeliveryView extends StatelessWidget {
  const SelectDeliveryView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "بيانات المندوبين",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
              const SelectDeriversListView()
            ],
          ),
        ));
  }
}