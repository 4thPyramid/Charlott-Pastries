import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/client_details_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/add_order_header.dart';
import 'package:flutter/material.dart';

class ClientDetailsView extends StatelessWidget {
  const ClientDetailsView({
    super.key,
    required this.long,
    required this.lat,
    required this.address,
    required this.orderId,
  });
  final double long;
  final double lat;
  final String address;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(title: "اضافة طلب جديد"),
          const AddOrderHeader(
            image: AppAssets.addOrder2,
            title: 'تفاصيل العميل',
          ),
          ClientDetailsComponant(
            lat: lat.toString(),
            long: long.toString(),
            address: address,
            orderId: orderId,
          ),
        ],
      ),
    );
  }
}
