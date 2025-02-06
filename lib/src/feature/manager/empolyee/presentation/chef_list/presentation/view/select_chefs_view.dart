import 'package:flutter/material.dart';
import '../../../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../components/select_chefs_list_view.dart';

class SelectChefsView extends StatelessWidget {
  const SelectChefsView({super.key, required this.orderId});
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
                title: " قائمه الشيفات",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
               SelectChefsListView(orderId: orderId,)
            ],
          ),
        ));
  }
}
