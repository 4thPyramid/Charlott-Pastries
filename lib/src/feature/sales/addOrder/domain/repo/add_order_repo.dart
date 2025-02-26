import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_remote_data_source.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';

import 'package:dartz/dartz.dart';

import '../../../../manager/empolyee/data/model/delivery_details_response.dart';
import '../../../../manager/empolyee/data/model/employee_response.dart';

abstract class AddOrderRepo {
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
        Future<Either<ErrorModel, EmployeesResponse>> getDelivery()async {
          return addOrderRemoteDataSource.getDelivery();
        }
      
        @override
        Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
          return addOrderRemoteDataSource.getDeliveryDetails(id);
        }
      
        @override
        Future<Either<ErrorModel, String>> selectDelivery(
      int deliveryId, int branchId, int orderId) async {
          return addOrderRemoteDataSource.selectDelivery(deliveryId, branchId,orderId);
        }

  
}
