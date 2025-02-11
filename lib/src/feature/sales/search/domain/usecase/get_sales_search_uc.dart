import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:charlot/src/feature/sales/search/domain/repo/sales_search_repo.dart';
import 'package:dartz/dartz.dart';

class GetSalesSearchUC {
  final SalesSearchRepo salesSearchRepo;
  GetSalesSearchUC(this.salesSearchRepo);
  Future<Either<ErrorModel, List<SalesSearchModel>>> call(String query) async {
    return await salesSearchRepo.searchSales(query);
  }
}
