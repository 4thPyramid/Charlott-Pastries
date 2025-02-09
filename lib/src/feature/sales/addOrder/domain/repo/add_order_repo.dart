import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_remote_data_source.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_client_data_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_price_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_price_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class AddOrderRepo {
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId);
}

class AddOrderRepoImpl extends AddOrderRepo {
  final AddOrderRemoteDataSource addOrderRemoteDataSource;
  AddOrderRepoImpl(this.addOrderRemoteDataSource);
  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
          AddOrderRequestModel request) =>
      addOrderRemoteDataSource.addOrderDetails(request);
  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
          AddPriceRequestModel request, int orderId) =>
      addOrderRemoteDataSource.addOrderPrice(request, orderId);
  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
          AddCustomerRequestModel request, int orderId) =>
      addOrderRemoteDataSource.addOrderClientData(request, orderId);
}
