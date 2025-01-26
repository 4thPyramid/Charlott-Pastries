import 'package:charlot/src/feature/manager/orders/presentation/widgets/refused_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/utils/app_assets.dart';

class RefusedOrderListView extends StatelessWidget {
  const RefusedOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            context.push(
              RouterNames.returnAndRefusedOrderDetails,
              extra: {
                'from': 'refusedOrder',
                'title': "تفاصيل الطلب المرفوض",
                'orderStatus': 'طلب مرفوض',
              },
            );
          },
          child: const RefusedOrderCard(
            imageUrl: AppAssets.rejectImage,
            title: 'كيك وورد',
            time: 'من 20 دقيقه',
            type: "طلب مرفوض ",
          ),
        ),
      ),
    );
  }
}
