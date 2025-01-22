// lib/features/map_picker/domain/usecases/get_address_from_lat_lng.dart
import 'package:charlot/src/feature/location/domain/repo/map_picker_repo.dart';
import 'package:dartz/dartz.dart';

class GetAddressFromLatLng {
  final MapPickerRepository repository;

  GetAddressFromLatLng(this.repository);

  Future<Either<Error, String>> call(double lat, double lng) async {
    return repository.getAddressFromLatLng(lat, lng);
  }
}
