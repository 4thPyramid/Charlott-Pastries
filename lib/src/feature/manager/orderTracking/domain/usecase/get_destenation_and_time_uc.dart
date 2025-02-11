import 'package:charlot/src/feature/manager/orderTracking/domain/repository/map_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetDestenationAndTimeUc {
  final MapRepository repository;

  GetDestenationAndTimeUc(this.repository);

  Future<Map<String, dynamic>> call({
    required LatLng origin,
    required LatLng destination,
  }) async {
    return await repository.getDestenationAndTime(origin, destination);
  }
}
