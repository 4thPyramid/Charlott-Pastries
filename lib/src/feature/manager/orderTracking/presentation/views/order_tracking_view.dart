import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_cubit.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/widgets/custom_bottom_sheet.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/widgets/custom_map_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/logic/order_details_cubit.dart';
import 'package:charlot/src/feature/orderDetails/presentation/logic/order_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView(
      {super.key,
      required this.orderId,
      this.locationModel,
      this.deliveryBoyId});
  final int orderId;
  final LocationModel? locationModel;
  final int? deliveryBoyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Order Tracking'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<OrderDetailsCubit>()..call(orderId)),
          BlocProvider(
              create: (context) => getIt<MapCubit>()
                ..fetchDeliveryBoyLocation(deliveryBoyId ?? 0)),
        ],
        child: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('جاري التحميل...')),
              loading: () => const Center(child: CircularProgressIndicator()),
              failure: (error) =>
                  Center(child: Text('حدث خطاء: ${error.message}')),
              success: (orderDetailsResponse) => Stack(
                children: [
                  CustomMapWidget(
                    origin: LatLng(
                      double.parse(orderDetailsResponse.branch!.latitude),
                      double.parse(orderDetailsResponse.branch!.latitude),
                    ),
                    destination: LatLng(
                      double.parse(orderDetailsResponse.latitude ?? '0.0'),
                      double.parse(orderDetailsResponse.latitude ?? '0.0'),
                    ),
                    currentPosition: LatLng(
                      locationModel?.lat != null ? locationModel!.lat : 0.0,
                      locationModel?.long != null ? locationModel!.long : 0.0,
                      // double.parse(orderDetailsResponse.latitude ?? '0.0'),
                      // double.parse(orderDetailsResponse.latitude ?? '0.0'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CustomBottomSheet(
                      orderId: orderId,
                      origin: LatLng(
                        double.parse(orderDetailsResponse.branch!.latitude),
                        double.parse(orderDetailsResponse.branch!.latitude),
                      ),
                      destination: LatLng(
                        double.parse(orderDetailsResponse.latitude ?? '0.0'),
                        double.parse(orderDetailsResponse.latitude ?? '0.0'),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
