import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/search/data/datasource/manager_search_remote_data.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class ManagerSearchRepo {
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(
      String keyword);
}

class ManagerSearchRepoImpl implements ManagerSearchRepo {
  final ManagerSearchRemoteData managerSearchRemoteData;

  ManagerSearchRepoImpl(this.managerSearchRemoteData);
  @override
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(
      String keyword) async {
    return await managerSearchRemoteData.searchSales(keyword);
  }
}
