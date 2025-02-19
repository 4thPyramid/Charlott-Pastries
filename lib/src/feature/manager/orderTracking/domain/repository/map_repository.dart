import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/dataSource/map_remote_data_source.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapRepository {
  Future<List<LatLng>> getRoutePolyline({
    required LatLng origin,
    required LatLng destination,
  });
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination);

  Future<Either <ErrorModel, LocationModel>> getDeliveryBoyLocation(
      int deliveryId);
}

class MapRepositoryImpl implements MapRepository {
  final MapRemoteDataSource remoteDataSource;

  MapRepositoryImpl( this.remoteDataSource);

  @override
  Future<List<LatLng>> getRoutePolyline({
    required LatLng origin,
    required LatLng destination,
  }) async {
    return await remoteDataSource.getRoutePolyline(
        origin: origin, destination: destination);
  }

  @override
  Future<Map<String, dynamic>> getDestenationAndTime(
    LatLng origin,
    LatLng destination,
  ) async {
    return await remoteDataSource.getDestenationAndTime(origin, destination);
  }
  
  @override
  Future<Either<ErrorModel, LocationModel>> getDeliveryBoyLocation(int deliveryId) {
    return remoteDataSource.getDeliveryBoyLocation(deliveryId);
  }
}
