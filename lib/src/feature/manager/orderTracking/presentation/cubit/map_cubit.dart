import 'package:charlot/src/feature/manager/orderTracking/data/dataSource/api_service.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_delivery_boy_location.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_destenation_and_time_uc.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final GetRouteUC getRouteUseCase;
  final GetDestenationAndTimeUc getDestenationAndTimeUc;
  final GetDeliveryBoyLocation getDeliveryBoyLocation;
  final MapTrackingApiService apiService;

  MapCubit(
    this.getRouteUseCase,
    this.getDestenationAndTimeUc,
    this.getDeliveryBoyLocation,
    this.apiService,
  ) : super(MapInitial());

  Future<void> getRoute(LatLng origin, LatLng destination) async {
    // emit(MapLoading());
    try {
      PolylinePoints polylinePoints = PolylinePoints();
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
          origin: PointLatLng(origin.latitude, origin.longitude),
          destination: PointLatLng(destination.latitude, destination.longitude),
          mode: TravelMode.driving,
        ),
        googleApiKey: "AIzaSyBMaCjdzcpOgRcN1OYGQZCN9CuqiK8KlZs",
      );

      if (result.points.isNotEmpty) {
        List<LatLng> polylineCoordinates = result.points
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList();
        emit(MapLoaded(polylineCoordinates, origin));
        // _animateMarker(polylineCoordinates);
      } else {
        emit(MapError("No route found"));
      }
    } catch (e) {
      emit(MapError(e.toString()));
    }
  }

  void _animateMarker(List<LatLng> routeCoordinates) async {
    for (int i = 0; i < routeCoordinates.length; i++) {
      await Future.delayed(const Duration(milliseconds: 500));

      if (!isClosed) {
        emit(MapMarkerMoved(routeCoordinates[i]));
      } else {
        break;
      }
    }
  }

  void fetchDeliveryBoyLocation(int deliveryId) async {
    try {
      final result = await getDeliveryBoyLocation(deliveryId);
      result.fold(
        (error) => emit(MapError(error.message)),
        (location) {
          emit(MapDeliveryBoyLocationLoaded(location));
          _startLocationUpdates(deliveryId);
        },
      );
    } catch (e) {
      emit(MapError("خطأ في تحميل موقع عامل التوصيل: $e"));
    }
  }

  void _startLocationUpdates(int deliveryId) async {
    while (!isClosed) {
      await Future.delayed(const Duration(seconds: 30));
      fetchDeliveryBoyLocation(deliveryId);
    }
  }

  void fetchDistanceAndTime(LatLng origin, LatLng destination) async {
    try {
      final result = await getDestenationAndTimeUc(
          origin: origin, destination: destination);
      emit(MapDistanceLoaded(result['distance'], result['duration']));
    } catch (e) {
      emit(MapError("خطأ في تحميل المسافة والوقت: $e"));
    }
  }
}
