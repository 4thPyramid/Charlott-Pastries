import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_image_view.dart';
import '../../../../../../core/utils/app_styles.dart';

class NewestOrdersCardItem extends StatelessWidget {
  const NewestOrdersCardItem(
      {super.key, required this.orderName, required this.orderType});
  final String orderName;
  final String orderType;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.white,
        child: ListTile(
          leading: const AppImageView(
            AppAssets.newestIcon,
          ),
          title: Text(
            orderType,
            style: AppStyles.s16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            orderName,
            style: AppStyles.s12.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "2025/1/16",
                style: AppStyles.s14.copyWith(
                  color: AppColors.grey,
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
