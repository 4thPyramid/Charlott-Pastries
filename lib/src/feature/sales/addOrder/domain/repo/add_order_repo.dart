import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_remote_data_source.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_order_client_data_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_order_price_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/all_ready_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/store_ready_orders_model.dart';
import 'package:dartz/dartz.dart';

abstract class AddOrderRepo {
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId);

  Future<Either<ErrorModel, StoreReadyOrdersModel>> storeReadyOrders(
      int quantity, int orderId);
  Future<Either<ErrorModel, AllReadyProductModel>> getAllReadyProducts();
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

  @override
  Future<Either<ErrorModel, StoreReadyOrdersModel>> storeReadyOrders(
      int quantity, int orderId) {
    return addOrderRemoteDataSource.storeReadyOrders(quantity, orderId);
  }

  @override
  Future<Either<ErrorModel, AllReadyProductModel>> getAllReadyProducts() {
    return addOrderRemoteDataSource.getAllReadyProducts();
  }
}
