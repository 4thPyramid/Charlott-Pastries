import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../components/complete_orders_details_component.dart';

class CompleteOrdersDetails extends StatelessWidget {
  const CompleteOrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(
              title: "تفاصيل الطلب المكتمل",
              iconleft: Icons.arrow_back_ios,
            ),
            SizedBox(height: 10.h),
            const CompleteOrdersDetailsComponant(),
          ],
        ),
      ),
    );
  }
}
