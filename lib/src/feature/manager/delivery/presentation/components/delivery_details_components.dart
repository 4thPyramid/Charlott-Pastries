
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../chef_list/presentation/widgets/chef_details_card_item.dart';
import '../../../chef_list/presentation/widgets/connect_with_chef_card.dart';
import '../../../home/presentation/widgets/custom_title.dart';
import '../../../newest_orders/presentation/widgets/accept_order_pop.dart';
import 'current_delivery_order_list.dart';

class DeliveryDetailsComponents extends StatelessWidget {
  const DeliveryDetailsComponents({super.key});

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding:  EdgeInsets.all(20.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ChefAndDeliveryDetailsCardItem(
            name: 'محمد عمرو',
            specialization: '  0120230344 ',
            status: 'متاح',
            avatarUrl: 'https://example.com/chef-avatar.jpg',
            ordersCount: 25,
          ),
           SizedBox(height: 20.h),
          const CustomTitle(title: 'نبذه عن المندوب'),
           SizedBox(height: 10.h),
          Text(
            'بأكثر من 10 سنوات خبرة. معروف بإبداعه في تصميم الكيك وتقديم محمد عمرو شيف حلويات شرقي محترف يعمل في مجال الطهي منذ 5 سنوات',
            style:AppStyles.s12,
          ),
           SizedBox(height: 20.h),
          const CustomTitle(title: 'طرق التواصل بالمندوب'),
           SizedBox(height: 20.h),
          const ConnectWithChefCard(email: 'karimelsad@gmail.com', phone: '01023933834',),
           SizedBox(height: 20.h),
          const CustomTitle(title: 'قائمه الطلباتة الحاليه '),
           SizedBox(height: 20.h),
        const CurrentDeliveryOrderList(),
           SizedBox(height: 40.h),
           Align(child: CustomButton(text: 'ارسال الطلب للمندوب', onPressed: () {
                  acceptOrderPop(context ,"routeName", title: ' تم ارسال الطلب للمندوب', buttonTitle: 'رجوع', 
                  onPressed: () {
                    Navigator.pop(context);
                  }
                  );

           })),
           SizedBox(height: 40.h),


        ],
      ),
    );
  }
}