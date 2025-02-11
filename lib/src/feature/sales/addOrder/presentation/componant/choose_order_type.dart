import 'package:charlot/src/feature/sales/addOrder/presentation/componant/products_grid_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/requset_type_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/order_type_taps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseOrderType extends StatefulWidget {
  const ChooseOrderType({super.key});

  @override
  State<ChooseOrderType> createState() => _ChooseOrderTypeState();
}

class _ChooseOrderTypeState extends State<ChooseOrderType>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1363.h,
      child: Column(
        children: [
          RequestTypeTapsWidget(tabController: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                RequestTypeForm(),
                ReadyProductsForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
