import 'package:charlot/src/feature/orderDetails/presentation/widgets/dates_container_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/app_strings.dart';

class OrderTimes extends StatelessWidget {
  const OrderTimes({
    super.key, required this.orderStatus, required this.startAt, required this.endAt,
  });
final String orderStatus;
final String startAt;
final String endAt;

  String _formatDate(String dateTimeString) {
    final dateTime = DateTime.parse(dateTimeString); 
    final formatter = DateFormat('yyyy-MM-dd'); 
    return formatter.format(dateTime); 
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         OrderDetailsSectionsTitleWidget(
          title: AppStrings.orderTimes,
          subtitle: orderStatus,
        ),
        SizedBox(height: 16.h),
         DatesContainerWidget(
            startData: _formatDate(startAt), 
          endData: _formatDate(endAt),
        ),
      ],
    );
  }
}
