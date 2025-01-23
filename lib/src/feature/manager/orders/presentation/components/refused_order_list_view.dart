import 'package:charlot/src/feature/manager/orders/presentation/widgets/refused_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_assets.dart';

class RefusedOrderListView extends StatelessWidget {
  const RefusedOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,bottom: 8.0,right: 8.0),
          child: Text('Refused Order List View',),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.37,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            shrinkWrap: true,
            itemCount: 5,
                         // physics: NeverScrollableScrollPhysics(),
    
            itemBuilder: (context, index) => const RefusedOrderCard(
              imageUrl: AppAssets.home,
              title: 'شيف حلويات شرقي',
              time: ' قبل 3 ساعات',
              type: ' طلب اضافة  ',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,bottom: 8.0,right: 8.0),
          child: Text('Refused Order List View'),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.37,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => const RefusedOrderCard(
              imageUrl: AppAssets.home,
              title: 'شيف حلويات شرقي',
              time: ' قبل 3 ساعات',
              type: ' طلب اضافة  ',
            ),
          ),
        )
      ],
    );
  }
}
