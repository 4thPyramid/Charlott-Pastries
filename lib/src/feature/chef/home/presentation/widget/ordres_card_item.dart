import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_image_view.dart';
import '../../../../../../core/utils/app_styles.dart';

class OrdersCardItem extends StatelessWidget {
  const OrdersCardItem(
      {super.key, required this.orderName, required this.orderId, required this.date});
  final String orderName;
  final int orderId;
final String date;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.white,
        child: ListTile(
          leading: const AppImageView(
            AppAssets.newestIcon,
          ),
          title: Text(
            "$orderId",
            style: AppStyles.s16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            orderName,
            style: AppStyles.s12.copyWith(
              color: AppColors.greyForText,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
               date,
                style: AppStyles.s14.copyWith(
                  color: AppColors.greyForText,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.date_range_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
