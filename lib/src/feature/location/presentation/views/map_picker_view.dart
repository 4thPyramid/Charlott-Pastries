import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
    as places;

class MapPickerView extends StatefulWidget {
  const MapPickerView({super.key});

  @override
  State<MapPickerView> createState() => _MapPickerViewState();
}

class _MapPickerViewState extends State<MapPickerView> {
  final TextEditingController _searchController = TextEditingController();
  final places.FlutterGooglePlacesSdk _placesSdk =
      places.FlutterGooglePlacesSdk("AIzaSyAvRUO9js6cWK6PC42iKxLr7X0T0wVyOBE");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapPickerCubit, MapPickerState>(
      builder: (context, state) {
        final cubit = context.read<MapPickerCubit>();

        return Scaffold(
          appBar: AppBar(
            title: const Text('اختر الموقع'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'ابحث عن مكان...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  onSubmitted: (query) => _searchPlace(context, query),
                ),
              ),
              Expanded(
                child: GoogleMap(
                  onMapCreated: cubit.setMapController,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(30.0444, 31.2357),
                    zoom: 12,
                  ),
                  onTap: (LatLng location) {
                    cubit.getAddress(location.latitude, location.longitude);
                  },
                  markers: cubit.marker != null ? {cubit.marker!} : {},
                  zoomControlsEnabled: true,
                  zoomGesturesEnabled: true,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (state is MapPickerLoading)
                      const Center(child: CircularProgressIndicator())
                    else if (state is MapPickerLoaded)
                      Text(
                        'العنوان: ${state.address}',
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.right,
                      )
                    else if (state is MapPickerError)
                      Text(
                        'خطأ: ${state.message}',
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.right,
                      ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: state is! MapPickerLoading
                          ? () {
                              if (state is MapPickerLoaded) {
                                Navigator.pop(context, {
                                  'address': state.address,
                                  'latitude': state.latitude,
                                  'longitude': state.longitude,
                                });
                              }
                            }
                          : null,
                      child: const Text('تأكيد الموقع'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.my_location),
            onPressed: () => cubit.getCurrentLocation(),
          ),
        );
      },
    );
  }

  Future<void> _searchPlace(BuildContext context, String query) async {
    if (query.isEmpty) return;

    final cubit = context.read<MapPickerCubit>();

    try {
      final predictions = await _placesSdk.findAutocompletePredictions(
        query,
        origin: const places.LatLng(lat: 30.0444, lng: 31.2357),
      );

      if (predictions.predictions.isNotEmpty) {
        final placeId = predictions.predictions.first.placeId;
        final placeDetails = await _placesSdk.fetchPlace(
          placeId,
          fields: [places.PlaceField.Location],
        );

        final lat = placeDetails.place?.latLng?.lat;
        final lng = placeDetails.place?.latLng?.lng;

        if (lat != null && lng != null) {
          cubit.getAddress(lat, lng);
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('لا يمكن جلب الإحداثيات')),
            );
          }
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('لم يتم العثور على نتائج')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('حدث خطأ أثناء البحث: $e')),
        );
      }
    }
  }
}
