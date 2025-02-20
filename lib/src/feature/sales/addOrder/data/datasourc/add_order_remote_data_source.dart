import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_api_service.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../manager/empolyee/data/model/delivery_details_response.dart';
import '../../../../manager/empolyee/data/model/employee_response.dart';

abstract class AddOrderRemoteDataSource {
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

  @override
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery() async {
    return apiService.getDelivery();
  }

  @override
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
    return apiService.getDeliveryDetails(id);
  }

  @override
  Future<Either<ErrorModel, String>> selectDelivery(
      int deliveryId, int branchId, int orderId) async {
    return apiService.selectDelivery( deliveryId, branchId,  orderId);
  }
}
