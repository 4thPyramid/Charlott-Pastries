// ملف: map_widget.dart
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final Function(GoogleMapController) onMapCreated;

  const MapWidget({
    super.key,
    required this.onMapCreated,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: const CameraPosition(
        target: LatLng(30.0444, 31.2357),
        zoom: 12,
      ),
      onTap: (location) => _handleMapTap(location, context),
      markers: context.read<MapPickerCubit>().marker != null
          ? {context.read<MapPickerCubit>().marker!}
          : {},
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
    );
  }

  void _handleMapTap(LatLng location, BuildContext context) {
    context
        .read<MapPickerCubit>()
        .getAddress(location.latitude, location.longitude);
  }
}
