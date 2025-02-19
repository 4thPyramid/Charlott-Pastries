import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:charlot/src/feature/manager/orderTracking/domain/repository/map_repository.dart';
import 'package:dartz/dartz.dart';

class GetDeliveryBoyLocation {
  final MapRepository repository;

  GetDeliveryBoyLocation(this.repository);

  Future<Either<ErrorModel, LocationModel>> call(int deliveryId) async {
    return repository.getDeliveryBoyLocation(deliveryId);
  }
}
