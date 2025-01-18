import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:flutter/material.dart';

class CheafHomeView extends StatelessWidget {
  const CheafHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          HomeIntroImage(),
        ],
      ),
    );
  }
}
