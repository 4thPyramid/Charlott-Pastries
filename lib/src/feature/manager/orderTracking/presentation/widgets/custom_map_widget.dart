import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_cubit.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMapWidget extends StatefulWidget {
  final LatLng origin;
  final LatLng destination;
  final LatLng currentPosition;

  const CustomMapWidget({
    super.key,
    required this.origin,
    required this.destination,
    required this.currentPosition,
  });

  @override
  _CustomMapWidgetState createState() => _CustomMapWidgetState();
}

class _CustomMapWidgetState extends State<CustomMapWidget> {
  GoogleMapController? _mapController;
  final Map<MarkerId, Marker> _markers = {};
  final Map<PolylineId, Polyline> _polylines = {};
  late MapCubit _mapCubit;
  BitmapDescriptor? customIcon;

  String? distanceText;
  String? durationText;
  LatLng currentPosition = const LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    _mapCubit = context.read<MapCubit>();
    _loadCustomMarker();
    _initializeMarkers();

    _mapCubit.getRoute(widget.origin, widget.destination);
    _mapCubit.fetchDistanceAndTime(widget.currentPosition, widget.destination);
  }

  Future<void> _loadCustomMarker() async {
    customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(
        size: Size(48, 48),
        devicePixelRatio: 2.0,
      ),
      AppAssets.delviry,
    );

    setState(() {
      _initializeMarkers();
    });
  }

  void _initializeMarkers() {
    _markers[const MarkerId("origin")] = Marker(
      markerId: const MarkerId("origin"),
      position: widget.origin,
      icon: BitmapDescriptor.defaultMarker,
    );

    _markers[const MarkerId("destination")] = Marker(
      markerId: const MarkerId("destination"),
      position: widget.destination,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );

    _markers[const MarkerId("moving_marker")] = Marker(
      markerId: const MarkerId("moving_marker"),
      position: widget.currentPosition,
      icon: customIcon ?? BitmapDescriptor.defaultMarker,
    );

    currentPosition = widget.currentPosition;
  }

  void _updateMovingMarker(LatLng newPosition) {
    setState(() {
      _markers[const MarkerId("moving_marker")] = Marker(
        markerId: const MarkerId("moving_marker"),
        position: newPosition,
        icon: customIcon ?? BitmapDescriptor.defaultMarker,
      );
    });

    _mapController?.animateCamera(CameraUpdate.newLatLng(newPosition));

    _mapCubit.fetchDistanceAndTime(newPosition, widget.destination);
  }

  void _updatePolyline(List<LatLng> coordinates) {
    setState(() {
      _polylines[const PolylineId("route")] = Polyline(
        polylineId: const PolylineId("route"),
        color: Colors.blue,
        width: 5,
        points: coordinates,
      );
    });
  }

  void _updateMovingMarkerPolyline(List<LatLng> coordinates) {
    setState(() {
      _polylines[const PolylineId("route")] = Polyline(
        polylineId: const PolylineId("route"),
        color: Colors.blue,
        width: 5,
        points: coordinates,
      );
    });
  }

  @override
  void didUpdateWidget(CustomMapWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentPosition != oldWidget.currentPosition) {
      _updateMovingMarker(widget.currentPosition);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocListener<MapCubit, MapState>(
          listener: (context, state) {
            if (state is MapLoaded) {
              _updatePolyline(state.polylineCoordinates);
            } else if (state is MapMarkerMoved) {
              _updateMovingMarker(state.newPosition);
            } else if (state is MapDistanceLoaded) {
              setState(() {
                distanceText = state.distance;
                durationText = state.duration;
              });
            }
          },
          child: BlocBuilder<MapCubit, MapState>(
            builder: (context, state) {
              if (state is MapLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is MapError) {
                return Center(child: Text(state.message));
              }

              return GoogleMap(
                myLocationEnabled: true,
                padding: EdgeInsets.only(bottom: 250.h),
                myLocationButtonEnabled: true,
                zoomControlsEnabled: true,
                zoomGesturesEnabled: true,
                compassEnabled: true,
                initialCameraPosition:
                    CameraPosition(target: widget.origin, zoom: 16),
                onMapCreated: (controller) => _mapController = controller,
                markers: Set<Marker>.of(_markers.values),
                polylines: Set<Polyline>.of(_polylines.values),
              );
            },
          ),
        ),
      ],
    );
  }
}
