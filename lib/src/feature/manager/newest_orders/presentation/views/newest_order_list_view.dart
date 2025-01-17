import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentation/widgets/newest_order_card_item.dart';

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
        return InkWell(
          onTap: () {
            context.push(RouterNames.newestOrderDetails,);
          },
          child: const NewestOrdersCardItem(
              orderName: ' تورتة عيد ميلاد موسي', orderType: 'حلويات غربيه',date:  "2025/1/16",),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.h);
      },
    );
  }
}
