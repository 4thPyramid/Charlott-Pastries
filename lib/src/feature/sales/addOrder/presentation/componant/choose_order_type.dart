import 'package:charlot/src/feature/sales/addOrder/presentation/componant/requset_type_form.dart';
import 'package:flutter/material.dart';

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
    return const SizedBox(
      child: Column(
        children: [
          RequestTypeForm(),
        ],
      ),
    );
  }
}
