import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/dataSource/api_service.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapRemoteDataSource {
  Future<List<LatLng>> getRoutePolyline({
    required LatLng origin,
    required LatLng destination,
  });

  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination);

  Future<Either<ErrorModel, LocationModel>> getDeliveryBoyLocation(
      int deliveryId);
}

class MapRemoteDataSourceImpl implements MapRemoteDataSource {
  final String googleApiKey;
  final MapTrackingApiService mapTrackingApiService;
  MapRemoteDataSourceImpl(this.mapTrackingApiService,
      {required this.googleApiKey});

  @override
  Future<List<LatLng>> getRoutePolyline({
    required LatLng origin,
    required LatLng destination,
  }) async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: googleApiKey,
      request: PolylineRequest(
        origin: PointLatLng(origin.latitude, origin.longitude),
        destination: PointLatLng(destination.latitude, destination.longitude),
        mode: TravelMode.driving,
      ),
    );

    if (result.points.isNotEmpty) {
      return result.points
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
    } else {
      throw Exception("خطأ في جلب المسار: ${result.errorMessage}");
    }
  }

  @override
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination) async {
    return await mapTrackingApiService.getDestenationAndTime(
        origin, destination);
  }

  @override
  Future<Either<ErrorModel, LocationModel>> getDeliveryBoyLocation(
      int deliveryId) async {
    return await mapTrackingApiService.getDeliveryBoyLocation(deliveryId);
  }
}
