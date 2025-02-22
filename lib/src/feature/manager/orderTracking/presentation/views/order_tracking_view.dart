import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_cubit.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_state.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/widgets/custom_map_widget.dart';
import 'package:charlot/src/feature/orderDetails/presentation/logic/order_details_cubit.dart';
import 'package:charlot/src/feature/orderDetails/presentation/logic/order_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key, required this.orderId});
  final int orderId;
  final int deliveryId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<OrderDetailsCubit>()..call(orderId)),
          BlocProvider(
              create: (context) =>
                  getIt<MapCubit>()..fetchDeliveryBoyLocation(deliveryId)),
        ],
        child: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text("Initializing...")),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (orderDetails) {
                return BlocBuilder<MapCubit, MapState>(
                  builder: (context, mapState) {
                    print("Current Map State: $mapState");

                    if (mapState is MapDeliveryBoyLocationLoaded) {
                      return CustomMapWidget(
                        origin: LatLng(
                          double.tryParse(
                                  orderDetails.branch!.latitude.toString()) ??
                              0.0,
                          double.tryParse(
                                  orderDetails.branch!.longitude.toString()) ??
                              0.0,
                        ),
                        destination: LatLng(
                          double.tryParse(orderDetails.latitude.toString()) ??
                              0.0,
                          double.tryParse(orderDetails.longitude.toString()) ??
                              0.0,
                        ),
                        currentPosition: LatLng(
                          double.tryParse(mapState.location.lat.toString()) ??
                              0.0,
                          double.tryParse(mapState.location.long.toString()) ??
                              0.0,
                        ),
                      );
                    } else if (mapState is MapError) {
                      return Center(
                          child: Text(
                              'Error fetching location: ${mapState.message}'));
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                );
              },
              failure: (error) =>
                  Center(child: Text('Error: ${error.message}')),
            );
          },
        ),
      ),
    );
  }
}
