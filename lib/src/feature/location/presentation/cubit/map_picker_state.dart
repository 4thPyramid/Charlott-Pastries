import 'package:equatable/equatable.dart';

abstract class MapPickerState extends Equatable {
  const MapPickerState();

  @override
  List<Object?> get props => [];
}

class MapPickerInitial extends MapPickerState {}

class MapPickerLoading extends MapPickerState {}

class MapPickerLoaded extends MapPickerState {
  final String address;
  final double latitude;
  final double longitude;

  const MapPickerLoaded({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [address, latitude, longitude];
}

class MapPickerError extends MapPickerState {
  final String message;

  const MapPickerError(this.message);

  @override
  List<Object?> get props => [message];
}
