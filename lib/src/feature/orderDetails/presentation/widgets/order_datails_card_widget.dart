import 'package:charlot/src/feature/orderDetails/presentation/widgets/cack_row_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/flowers_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsCardWidget extends StatelessWidget {
  const OrderDetailsCardWidget({
    super.key,
    required this.order,
    required this.size,
    required this.directions,
    required this.notes,
    required this.flowerType,
  });
  final String order;
  final String size;
  final String directions;
  final String notes;
  final String flowerType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding:  EdgeInsets.only(top: 16.h, right: 12.w, left: 12.w),
        child: Column(
          children: [
            CackRowWidget(
              size: size,
              directions: directions,
              notes: notes,
            ),
            const Divider(),
            SizedBox(height: 16.h),
            FlowersRowWidget(flowerType: flowerType),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
