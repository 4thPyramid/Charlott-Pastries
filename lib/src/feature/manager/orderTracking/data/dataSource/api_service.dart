import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapTrackingApiService {
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination);
}

class MapTrackingApiServiceImpl implements MapTrackingApiService {
  final String apiKey = AppConstants.mapDurationApiKey;
  final Dio dio = Dio();

  @override
  Future<Map<String, dynamic>> getDestenationAndTime(
      LatLng origin, LatLng destination) async {
    final String url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey";

    try {
      final response = await dio.get(url);
      final data = response.data;

      if (data['status'] == 'OK') {
        final route = data['routes'][0]['legs'][0];
        return {
          "distance": route['distance']['text'],
          "duration": route['duration']['text'],
        };
      } else {
        throw Exception("خطأ في استرجاع البيانات: ${data['status']}");
      }
    } catch (e) {
      throw Exception("فشل تحميل البيانات: $e");
    }
  }
}
