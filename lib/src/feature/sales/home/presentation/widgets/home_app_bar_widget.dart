import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text("اهلا بك",
          style: AppStyles.s12.copyWith(
            color: AppColors.darkTextGrey,
            fontWeight: FontWeight.w700,
          )),
      subtitle: Text("محمد عمرو",
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w600,
          )),
      trailing: const AppImageView(
        AppAssets.logo,
        isAvatar: true,
      ),
    );
  }
}
