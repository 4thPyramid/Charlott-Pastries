import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/search/data/datasource/manager_search_api_service.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class ManagerSearchRemoteData {
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(String query);
}

class ManagerSearchRemoteDataImpl implements ManagerSearchRemoteData {
  final ManagerSearchApiService managerSearchApiService;
  ManagerSearchRemoteDataImpl(this.managerSearchApiService);
  @override
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(
      String query) async {
    return await managerSearchApiService.searchSales(query);
  }
}
