import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/client_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_details_image_header.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_price.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_times.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../core/theme/app_colors.dart';
import '../componant/team_data.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView(
      {super.key,
      required this.from,
      required this.title,
      required this.orderStatus});
  final String from;
  final String title;
  final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyForSelectTap,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              title: title,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () {
                Navigator.pop(context);
              },
            ),
            const OrderDetailsImageHeader(),
            const OrderTimes(),
            SizedBox(height: 16.h),
            const ClientData(),
            const TeamData(),
            const OrderData(),
            const OrderPrice(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                text: "تأكيد الطلب",
                onPressed: () {},
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
