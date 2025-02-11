import 'package:charlot/src/feature/manager/orderTracking/domain/repository/map_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetRouteUC {
  final MapRepository repository;

  GetRouteUC(this.repository);

  Future<List<LatLng>> call({
    required LatLng origin,
    required LatLng destination,
  }) async {
    return await repository.getRoutePolyline(
        origin: origin, destination: destination);
  }
}
