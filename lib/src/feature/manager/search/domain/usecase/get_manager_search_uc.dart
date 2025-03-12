import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:charlot/src/feature/manager/search/domain/repo/manager_search_repo.dart';
import 'package:dartz/dartz.dart';

class GetManagerSearchUC {
  final ManagerSearchRepo managerSearchRepo;
  GetManagerSearchUC(this.managerSearchRepo);
  Future<Either<ErrorModel, List<ManagerSearchModel>>> call(String query) async {
    return await managerSearchRepo.searchSales(query);
  }
}
