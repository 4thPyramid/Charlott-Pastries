import 'package:charlot/src/feature/orderDetails/presentation/widgets/dates_container_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTimes extends StatelessWidget {
  const OrderTimes({
    super.key, required this.orderStatus,
  });
final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
           OrderDetailsSectionsTitleWidget(
            title: 'مواعيد الطلب',
            subtitle: orderStatus,
          ),
          SizedBox(height: 16.h),
          const DatesContainerWidget(
            startData: "26/10/2023",
            endData: "22/10/2023",
          ),
        ],
      ),
    );
  }
}
