import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_datails_card_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/order_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';

class OrderData extends StatelessWidget {
  const OrderData({super.key, required this.orderType, required this.orderDetails, required this.quantity, });
  
   final String orderType;

  final String orderDetails;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child:  const OrderDetailsSectionsTitleWidget(
            title:AppStrings.orderData,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child:  OrderDetailsCardWidget(
            directions: '90',
             quantity:quantity.toString() , 
             orderType: orderType,
              notes: orderDetails,
           
          ),
        ),
      ],
    );
  }
}
