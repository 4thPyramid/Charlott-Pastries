import 'package:charlot/src/feature/manager/orderTracking/presentation/widgets/custom_bottom_sheet.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/widgets/custom_map_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key, required this.orderId});
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomMapWidget(
        origin: LatLng(
          30.050000,
          31.233334,
        ),
        destination: LatLng(
          30.050000,
          31.233334,
        ),
        currentPosition: LatLng(
          30.050000,
          31.233334,
        ),
      ),
      bottomSheet: CustomBottomSheet(
        orderId: orderId,
      ),
    );
  }
}
