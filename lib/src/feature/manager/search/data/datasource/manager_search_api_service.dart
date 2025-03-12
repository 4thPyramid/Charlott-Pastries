import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:dartz/dartz.dart';

abstract class ManagerSearchApiService {
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(String query);
}

class ManagerSearchApiServiceImpl implements ManagerSearchApiService {
  final ApiConsumer apiConsumer;
  ManagerSearchApiServiceImpl(this.apiConsumer);

  @override
  Future<Either<ErrorModel, List<ManagerSearchModel>>> searchSales(
      String query) async {
    try {
      final response = await apiConsumer.get('manager/search?search=$query');

      if (response is Map<String, dynamic> && response.containsKey('orders')) {
        final List<dynamic> ordersJson = response['orders'];
        final List<ManagerSearchModel> orders =
            ordersJson.map((e) => ManagerSearchModel.fromJson(e)).toList();

        return Right(orders);
      } else {
        return Left(ErrorModel(message: "البيانات المسترجعة غير صحيحة"));
      }
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.errorModel.message));
    }
  }
}
