// map_picker_cubit.dart
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class MapPickerCubit extends Cubit<MapPickerState> {
  MapPickerCubit() : super(MapPickerInitial());

  Marker? marker;
  GoogleMapController? mapController;

  void setMapController(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> getAddress(double latitude, double longitude) async {
    try {
      emit(MapPickerLoading());

      // Update marker
      marker = Marker(
        markerId: const MarkerId('selected_location'),
        position: LatLng(latitude, longitude),
      );

      // Move camera to new position
      mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(latitude, longitude),
            zoom: 15,
          ),
        ),
      );

      // Get address from coordinates
      List<Placemark> placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        final address =
            '${place.street}, ${place.subLocality}, ${place.locality}, ${place.country}';
        emit(MapPickerLoaded(
          address: address,
          latitude: latitude,
          longitude: longitude,
        ));
      } else {
        emit(const MapPickerError('لم يتم العثور على عنوان'));
      }
    } catch (e) {
      emit(MapPickerError(e.toString()));
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      emit(MapPickerLoading());

      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(const MapPickerError('تم رفض إذن الموقع'));
          return;
        }
      }

      // Get current position
      final position = await Geolocator.getCurrentPosition();
      await getAddress(position.latitude, position.longitude);
    } catch (e) {
      emit(MapPickerError(e.toString()));
    }
  }
}
