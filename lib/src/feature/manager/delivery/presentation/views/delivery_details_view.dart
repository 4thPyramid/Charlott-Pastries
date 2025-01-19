
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../chef_list/presentation/widgets/chef_details_card_item.dart';
import '../../../chef_list/presentation/widgets/connect_with_chef_card.dart';
import '../../../home/presentation/widgets/custom_title.dart';
import '../../../newest_orders/presentation/widgets/accept_order_pop.dart';
import '../components/current_delivery_order_list.dart';
import '../components/delivery_details_components.dart';

class DeliveryDetailsView extends StatelessWidget {
  const DeliveryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "تفاصيل المندوب",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
              const DeliveryDetailsComponents(),
            ],
          ),
        ));
  }
}
