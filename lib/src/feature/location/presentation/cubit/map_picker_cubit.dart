import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
    as places;

class MapPickerCubit extends Cubit<MapPickerState> {
  final places.FlutterGooglePlacesSdk _placesSdk;
  GoogleMapController? mapController;
  Marker? marker;

  MapPickerCubit({required String apiKey})
      : _placesSdk = places.FlutterGooglePlacesSdk(apiKey),
        super(MapPickerInitial());

  // دالة البحث الجديدة
  Future<void> searchPlace(String query) async {
    try {
      emit(MapPickerLoading());

      final predictions = await _placesSdk.findAutocompletePredictions(query);

      if (predictions.predictions.isEmpty) {
        emit(MapPickerError('No results found'));
        return;
      }

      final placeId = predictions.predictions.first.placeId;
      final placeDetails = await _placesSdk.fetchPlace(
        placeId,
        fields: [places.PlaceField.Location],
      );

      final lat = placeDetails.place?.latLng?.lat;
      final lng = placeDetails.place?.latLng?.lng;

      if (lat == null || lng == null) {
        emit(MapPickerError('Invalid coordinates'));
        return;
      }

      // تحديث الخريطة والعنوان
      await getAddress(lat, lng);

      mapController?.animateCamera(
        CameraUpdate.newLatLngZoom(LatLng(lat, lng), 15),
      );
    } catch (e) {
      emit(MapPickerError(e.toString()));
    }
  }

  void setMapController(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> getAddress(double latitude, double longitude) async {
    try {
      emit(MapPickerLoading());

      marker = Marker(
        markerId: const MarkerId('selected_location'),
        position: LatLng(latitude, longitude),
      );

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
        emit(const MapPickerError('Address not found'));
      }
    } catch (e) {
      emit(MapPickerError(e.toString()));
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      emit(MapPickerLoading());

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(const MapPickerError('Location permission denied'));
          return;
        }
      }

      final position = await Geolocator.getCurrentPosition();
      await getAddress(position.latitude, position.longitude);
    } catch (e) {
      emit(MapPickerError(e.toString()));
    }
  }
}
