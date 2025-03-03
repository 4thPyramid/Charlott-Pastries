import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/dates_container_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class OrderTimes extends StatelessWidget {
  const OrderTimes({
    super.key,
    required this.orderStatus,
    required this.startAt,
    required this.from,
    required this.to,
  });
  final String orderStatus;
  final String startAt;

  final String from;
  final String to;
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
          title: AppStrings.orderTimes.tr(),
          subtitle: orderStatus,
        ),
        SizedBox(height: 16.h),
        DatesContainerWidget(
          startData:_formatDate(startAt),
          from: from,
          to: to,
        ),
      ],
    );
  }
}
