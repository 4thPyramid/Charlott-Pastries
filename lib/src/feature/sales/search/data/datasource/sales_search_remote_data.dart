import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/search/data/datasource/sales_search_api_service.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesSearchRemoteData {
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(String query);
}

class SalesSearchRemoteDataImpl implements SalesSearchRemoteData {
  final SalesSearchApiService salesSearchApiService;
  SalesSearchRemoteDataImpl(this.salesSearchApiService);
  @override
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(
      String query) async {
    return await salesSearchApiService.searchSales(query);
  }
}
