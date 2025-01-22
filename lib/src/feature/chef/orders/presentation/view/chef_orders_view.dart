import 'package:charlot/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefOrdersView extends StatefulWidget {
  const ChefOrdersView({super.key});

  @override
  _ChefOrdersViewState createState() => _ChefOrdersViewState();
}

class _ChefOrdersViewState extends State<ChefOrdersView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلبات الشيف'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.h),
          child: OrdersTapBar(tabController: _tabController),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          OrdersList(status: 'جديد'),
          OrdersList(status: 'قيد التنفيذ'),
          OrdersList(status: 'مكتمل'),
        ],
      ),
    );
  }
}

class OrdersTapBar extends StatelessWidget {
  const OrdersTapBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340.w,
        height: 56.h,
        padding: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: .5),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: TabBar(
          dividerColor: AppColors.primaryColor,
          dividerHeight: 0,
          controller: _tabController,
          labelColor: AppColors.primaryColor,
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
            shape: BoxShape.rectangle,
            border: const Border.symmetric(),
            color: AppColors.greyForSelectTap,
            borderRadius: BorderRadius.circular(8.r),
          ),
          tabs: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Tab(text: 'جديد'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Tab(text: 'قيد التنفيذ'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Tab(text: 'مكتمل'),
            ),
          ],
        ),
      ),
    );
  }
}

class OrdersList extends StatelessWidget {
  final String status;

  const OrdersList({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final List<String> orders =
        List.generate(10, (index) => 'طلب #${index + 1}');

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.only(bottom: 16.h),
          child: ListTile(
            title: Text(orders[index]),
            subtitle: Text('الحالة: $status'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
