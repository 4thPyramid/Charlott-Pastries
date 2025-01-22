// lib/features/map_picker/data/repositories/map_picker_repository_impl.dart

import 'package:charlot/src/feature/location/data/datasource/map_picker_remote_data_source.dart';
import 'package:dartz/dartz.dart';

abstract class MapPickerRepository {
  Future<Either<Error, String>> getAddressFromLatLng(double lat, double lng);
}

class MapPickerRepositoryImpl implements MapPickerRepository {
  final MapPickerRemoteDataSource remoteDataSource;

  MapPickerRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Error, String>> getAddressFromLatLng(
      double lat, double lng) async {
    try {
      final address = await remoteDataSource.getAddressFromLatLng(lat, lng);
      return Right(address);
    } catch (e) {
      return Left(Error());
    }
  }
}
