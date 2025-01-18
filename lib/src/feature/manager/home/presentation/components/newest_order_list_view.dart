import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/newest_order_card_item.dart';

class NewestOrderListView extends StatelessWidget {
  const NewestOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return NewestOrdersCardItem(
            orderName: ' تورتة عيد ميلاد موسي', orderType: 'حلويات غربيه');
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.h);
      },
    );
  }
}
