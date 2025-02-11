import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/search/data/datasource/sales_search_remote_data.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesSearchRepo {
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(
      String keyword);
}

class SalesSearchRepoImpl implements SalesSearchRepo {
  final SalesSearchRemoteData salesSearchRemoteData;

  SalesSearchRepoImpl(this.salesSearchRemoteData);
  @override
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(
      String keyword) async {
    return await salesSearchRemoteData.searchSales(keyword);
  }
}
