import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/all_ready_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/single_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/store_ready_orders_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AddOrderApiService {
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId);

  Future<Either<ErrorModel, StoreReadyOrdersModel>> storeReadyOrders(
      int quantity, int orderId);

  Future<Either<ErrorModel, AllReadyProductModel>> getAllReadyProducts();
  Future<Either<ErrorModel, SingleProductModel>> getReadyOrderDetails(
      int orderId);
}

class AddOrderApiServiceImpl implements AddOrderApiService {
  final ApiConsumer apiConsumer;
  AddOrderApiServiceImpl(this.apiConsumer);

  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request) async {
    try {
      final response = await apiConsumer.post("/sales/orders/first-screen",
          data: await request.toFormData(),
          isFormData: true,
          headers: {
            'Accept': 'application/vnd.api+json',
            'Content-Type': 'multipart/form-data',
            'Authorization': 'Bearer ${CacheHelper.getToken()}'
          });
      final model = AddOrderResponseModel.fromJson(response);
      return Right(model);
    } catch (error) {
      return Left(ErrorModel(message: error.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId) async {
    try {
      final response = await apiConsumer.put(
        "/sales/orders/$orderId/second-screen",
        data: request.toJson(),
        headers: {
          'Accept': 'application/vnd.api+json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${CacheHelper.getToken()}',
        },
      );
      final model = AddOrderResponseModel.fromJson(response);
      return Right(model);
    } catch (error) {
      return Left(ErrorModel(message: error.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId) async {
    try {
      final response = await apiConsumer.put(
          "/sales/orders/$orderId/third-screen",
          data: request.toJson(),
          headers: {
            'Accept': 'application/vnd.api+json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${CacheHelper.getToken()}',
          });
      final model = AddOrderResponseModel.fromJson(response);
      return Right(model);
    } catch (error) {
      return Left(ErrorModel(message: error.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, StoreReadyOrdersModel>> storeReadyOrders(
      int quantity, int productId) async {
    try {
      final response = await apiConsumer.post(
        "sales/product-order",
        isFormData: true,
        data: {
          "product_id": productId,
          "quantity": quantity,
        },
      );

      print("Full Response: $response");

      if (response is Map<String, dynamic> &&
          response.containsKey('statusCode')) {
        print("Response Status: ${response['statusCode']}");
      }

      final model = StoreReadyOrdersModel.fromJson(response);
      return Right(model);
    } catch (error) {
      return Left(ErrorModel(message: error.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, AllReadyProductModel>> getAllReadyProducts() async {
    try {
      final response = await apiConsumer.get("sales/products");

      final productsList = response['products'] as List<dynamic>;

      final result = AllReadyProductModel(
        products: productsList
            .map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      return Right(result);
    } on ServerException catch (error) {
      return Left(ErrorModel(message: error.errorModel.message));
    }
  }

  @override
  Future<Either<ErrorModel, SingleProductModel>> getReadyOrderDetails(
      int orderId) async {
    try {
      final response = await apiConsumer.get("sales/product/$orderId");
      final result = SingleProductModel.fromJson(response['product']);
      return Right(result);
    } on ServerException catch (error) {
      return Left(ErrorModel(message: error.errorModel.message));
    }
  }
}
