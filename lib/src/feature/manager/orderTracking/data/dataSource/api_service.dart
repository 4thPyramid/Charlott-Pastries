import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapTrackingApiService {
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination);
  Future<Either<ErrorModel, LocationModel>> getDeliveryBoyLocation(
      int deliveryId);
}

class MapTrackingApiServiceImpl implements MapTrackingApiService {
  final ApiConsumer api;
  final String apiKey = AppConstants.mapDurationApiKey;
  final Dio dio = Dio();

  MapTrackingApiServiceImpl(this.api);

  @override
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination) async {
    final String url = Uri.https(
      'maps.googleapis.com',
      '/maps/api/directions/json',
      {
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'mode':
            'driving', 
        'key': apiKey,
      },
    ).toString();

    try {
      print("Requesting route from: $origin to: $destination");
      print("Request URL: $url");

      final response = await dio.get(url);
      final data = response.data;

      print("API Response: $data");

      if (data['status'] == 'OK') {
        final route = data['routes'][0]['legs'][0];
        return {
          "distance": route['distance']['text'],
          "duration": route['duration']['text'],
        };
      } else if (data['status'] == 'REQUEST_DENIED') {
        throw Exception(
            "طلب مرفوض: ${data['error_message'] ?? 'تحقق من الـ API Key.'}");
      } else {
        throw Exception("خطأ في استرجاع البيانات: ${data['status']}");
      }
    } catch (e) {
      throw Exception("فشل تحميل البيانات: $e");
    }
  }

  @override
  Future<Either<ErrorModel, LocationModel>> getDeliveryBoyLocation(
      int deliveryId) async {
    try {
      final response = await api.get("manager/show-latest/$deliveryId");

      print("Full API Response: $response");

      return Right(LocationModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.toString()));
    } catch (e) {
      return Left(ErrorModel(message: "Unexpected error: $e"));
    }
  }
}
