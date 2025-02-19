import 'package:charlot/src/feature/manager/orderTracking/data/dataSource/api_service.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_delivery_boy_location.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_destenation_and_time_uc.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/usecase/get_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  void getRoute(LatLng origin, LatLng destination) async {
    emit(MapLoading());
    try {
      final route =
          await getRouteUseCase(origin: origin, destination: destination);
      emit(MapLoaded(route, origin));
      // _animateMarker(route);
    } catch (e) {
      emit(MapError("فشل تحميل المسار: $e"));
    }
  }

  void _animateMarker(List<LatLng> routeCoordinates) async {
    for (int i = 0; i < routeCoordinates.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));

      if (!isClosed) {
        emit(MapMarkerMoved(routeCoordinates[i]));
      } else {
        break;
      }
    }
  }
  void fetchDeliveryBoyLocation(int deliveryId) async {
    emit(MapLoading());
    try {
      final result = await getDeliveryBoyLocation(deliveryId);
      result.fold(
        (error) => emit(MapError(error.message)),
        (location) => emit(MapDeliveryBoyLocationLoaded(location)),
      );
    } catch (e) {
      emit(MapError("خطأ في تحميل موقع عامل التوصيل: $e"));
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
