import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_datails_card_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OrderData extends StatelessWidget {
  const OrderData({super.key, required this.orderType, required this.orderDetails, required this.image, required this.title,   });
  final String title;
   final String orderType;
  final String image;
  final String orderDetails;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child:   OrderDetailsSectionsTitleWidget(
            title:title,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child:  OrderDetailsCardWidget(
              image: image,
           
             orderType: orderType,
              notes: orderDetails,
           
          ),
        ),
      ],
    );
  }
}
