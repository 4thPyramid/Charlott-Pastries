import 'package:charlot/src/feature/orderDetails/presentation/widgets/dates_container_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTimes extends StatelessWidget {
  const OrderTimes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const OrderDetailsSectionsTitleWidget(
            title: 'مواعيد الطلب',
            subtitle: "تم اكتمال الطلب",
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
