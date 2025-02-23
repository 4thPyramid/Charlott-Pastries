import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/exceptions.dart';
import '../../../../manager/empolyee/data/model/delivery_details_response.dart';
import '../../../../manager/empolyee/data/model/employee_response.dart';

abstract class AddOrderApiService {
  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderDetails(
      AddOrderRequestModel request);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderPrice(
      AddPriceRequestModel request, int orderId);

  Future<Either<ErrorModel, AddOrderResponseModel>> addOrderClientData(
      AddCustomerRequestModel request, int orderId);

  Future<Either<ErrorModel, EmployeesResponse>> getDelivery();
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id);
  Future<Either<ErrorModel, String>> selectDelivery(
      int deliveryId, int branchId, int orderId);
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
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery() async {
    try {
      final response = await apiConsumer.get(
        EndpointsStrings.salesGetDelivery,
      );
      return Right(EmployeesResponse.fromJson({'employees': response}));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
    try {
      final response = await apiConsumer.get(
        EndpointsStrings.salesDeliveryDetails + id.toString(),
      );
      return Right(DeliveryDetails.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> selectDelivery(
      int deliveryId, int branchId, int orderId) async {
    try {
      final response = await apiConsumer.post(
        EndpointsStrings.salesSelectDelivery + deliveryId.toString(),
        data: {
          'branch_id': branchId,
          'order_id': orderId,
        },
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
