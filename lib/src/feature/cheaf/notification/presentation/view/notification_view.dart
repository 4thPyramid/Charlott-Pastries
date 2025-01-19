import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const CustomAppBar(title: "الاشعارات"),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: const AppImageView(
              AppAssets.home,
            ),
          ),
          title: const Text("حلويات غربيه"),
          subtitle: const Text("من ٢٠ دقيقه"),
        )
      ]),
    );
  }
}
