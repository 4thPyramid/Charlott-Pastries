import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesSearchApiService {
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(String query);
}

class SalesSearchApiServiceImpl implements SalesSearchApiService {
  final ApiConsumer apiConsumer;
  SalesSearchApiServiceImpl(this.apiConsumer);

  @override
  Future<Either<ErrorModel, List<SalesSearchModel>>> searchSales(
      String query) async {
    try {
      final response = await apiConsumer.get('sales/search?search=$query');

      if (response is Map<String, dynamic> && response.containsKey('orders')) {
        final List<dynamic> ordersJson = response['orders'];
        final List<SalesSearchModel> orders =
            ordersJson.map((e) => SalesSearchModel.fromJson(e)).toList();

        return Right(orders);
      } else {
        return Left(ErrorModel(message: "البيانات المسترجعة غير صحيحة"));
      }
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.errorModel.message));
    }
  }
}
