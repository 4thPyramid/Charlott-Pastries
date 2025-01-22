// lib/features/map_picker/data/datasources/map_picker_remote_data_source.dart
import 'package:geocoding/geocoding.dart';

abstract class MapPickerRemoteDataSource {
  Future<String> getAddressFromLatLng(double lat, double lng);
}

class MapPickerRemoteDataSourceImpl implements MapPickerRemoteDataSource {
  @override
  Future<String> getAddressFromLatLng(double lat, double lng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        return '${place.street}, ${place.locality}, ${place.country}';
      }
      throw Exception('No address found');
    } catch (e) {
      throw Exception('Failed to get address: $e');
    }
  }
}
