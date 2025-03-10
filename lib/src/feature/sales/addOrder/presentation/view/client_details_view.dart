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
    required this.isSameday,
  });
  final double long;
  final double lat;
  final String address;
  final int orderId;
  final String isSameday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                title: "Add Client Details",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                }),
            const AddOrderHeader(
              image: AppAssets.addOrder2,
              title: 'Client Details',
            ),
            ClientDetailsComponant(
              lat: lat.toString(),
              long: long.toString(),
              address: address,
              orderId: orderId,
              isSameday: isSameday,
            ),
          ],
        ),
      ),
    );
  }
}
