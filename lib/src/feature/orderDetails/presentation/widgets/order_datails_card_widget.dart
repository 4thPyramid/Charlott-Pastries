import 'package:charlot/src/feature/orderDetails/presentation/widgets/cack_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsCardWidget extends StatelessWidget {
  const OrderDetailsCardWidget({
    super.key,
 
    required this.notes,
    required this.orderType, required this.image,
  
  });
  final String orderType;
  final String notes;
  final String image;

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
            CakeRowWidget(
              orderType: orderType  ,
              notes: notes, image: image,
            ),
          
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
