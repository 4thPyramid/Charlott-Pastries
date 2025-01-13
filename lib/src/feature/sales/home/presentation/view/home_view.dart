import 'package:charlot/src/feature/sales/home/presentation/widgets/custom_row_filter.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/order_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 70.h),
          const HomeAppBar(),
          SizedBox(height: 20.h),
          const HomeIntroImage(),
          SizedBox(height: 20.h),
          const OrderFilter(),
          OrdersListView()
        ],
      ),
    ));
  }
}

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 20.h),
        itemBuilder: (context, index) => const OrderCardWidget(
          order: 'حلويات غربيه',
          orderType: 'طلب جديد',
          orderDate: '2023-05-30',
          claintName: 'محمد عمرو',
        ),
        itemCount: 10,
      ),
    );
  }
}
