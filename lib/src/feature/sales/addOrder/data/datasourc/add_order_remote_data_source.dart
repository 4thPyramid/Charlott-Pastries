import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_api_service.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class AddOrderRemoteDataSource {
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId);
}

class AddOrderRemoteDataSourceImpl implements AddOrderRemoteDataSource {
  final AddOrderApiService apiService;
  AddOrderRemoteDataSourceImpl(this.apiService);
  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
          AddOrderRequestModel request) =>
      apiService.addOrderDetails(request);

  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
          AddPriceRequestModel request, int orderId) =>
      apiService.addOrderPrice(request, orderId);
  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
          AddCustomerRequestModel request, int orderId) =>
      apiService.addOrderClientData(request, orderId);
}
