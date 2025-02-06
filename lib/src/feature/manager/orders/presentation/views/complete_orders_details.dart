import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../components/complete_orders_details_component.dart';

class CompleteOrdersDetails extends StatelessWidget {
  const CompleteOrdersDetails(
      {super.key,
      required this.orderTitle,
      required this.pageTitle,
      required this.orderStatusColor, required this.orderId});
  final String orderTitle;
  final String pageTitle;
  final Color orderStatusColor;
  final  int orderId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: pageTitle,
              iconLeft: Icons.arrow_back_ios,
              onPressedLeft: () => context.pop(),
            ),
            SizedBox(height: 10.h),
            CompleteOrdersDetailsComponent(
              orderTitle: orderTitle,
              statusColor: orderStatusColor,
              orderId: orderId,
              
            ),
          ],
        ),
      ),
    );
  }
}
