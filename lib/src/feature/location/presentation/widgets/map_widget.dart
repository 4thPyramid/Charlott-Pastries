import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final Function(GoogleMapController) onMapCreated;

  const MapWidget({super.key, required this.onMapCreated});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapPickerCubit, MapPickerState>(
      builder: (context, state) {
        final marker = context.read<MapPickerCubit>().marker;

        return GoogleMap(
          onMapCreated: onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(30.0444, 31.2357),
            zoom: 12,
          ),
          onTap: (location) => _handleMapTap(location, context),
          markers: marker != null ? {marker} : {},
          mapType: MapType.normal,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          padding: EdgeInsets.only(bottom: 200),
          // myLocationButtonEnabled: true,
          compassEnabled: true,
          liteModeEnabled: false,
          trafficEnabled: true,
          minMaxZoomPreference: const MinMaxZoomPreference(
            0,
            20,
          ),
        );
      },
    );
  }

  void _handleMapTap(LatLng location, BuildContext context) {
    context
        .read<MapPickerCubit>()
        .getAddress(location.latitude, location.longitude);
  }
}
