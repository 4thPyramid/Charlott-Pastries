import 'package:charlot/src/feature/manager/orderTracking/data/model/location_model.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapState {}

class MapInitial extends MapState {}

class MapLoading extends MapState {}

class MapLoaded extends MapState {
  final List<LatLng> polylineCoordinates;
  final LatLng initialPosition;

  MapLoaded(this.polylineCoordinates, this.initialPosition);
}

class MapMarkerMoved extends MapState {
  final LatLng newPosition;

  MapMarkerMoved(this.newPosition);
}

class MapDistanceLoaded extends MapState {
  final String distance;
  final String duration;

  MapDistanceLoaded(this.distance, this.duration);
}

class MapError extends MapState {
  final String message;

  MapError(this.message);
}
class MapDeliveryBoyLocationLoaded extends MapState {
  final LocationModel location;

  MapDeliveryBoyLocationLoaded(this.location);
}

