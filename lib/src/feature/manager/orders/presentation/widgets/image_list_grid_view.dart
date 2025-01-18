import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_assets.dart';

class ImageListGridView extends StatelessWidget {
  const ImageListGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(4, (index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            AppAssets.home,
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
