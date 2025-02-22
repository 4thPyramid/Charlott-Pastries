// ملف: map_picker_view.dart
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:charlot/src/feature/location/presentation/widgets/map_widget.dart';
import 'package:charlot/src/feature/location/presentation/widgets/search_field.dart';
import 'package:go_router/go_router.dart';

class MapPickerView extends StatelessWidget {
  const MapPickerView({super.key, required this.orderId, required this.isSameday});
  final int orderId;
  final String isSameday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MapPickerCubit, MapPickerState>(
        builder: (context, state) {
          return Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: MapWidget(
                  onMapCreated: context.read<MapPickerCubit>().setMapController,
                ),
              ),
              const Positioned(
                top: 50,
                left: 16,
                right: 16,
                child: SearchField(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: _buildBottomPanel(state, context),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.my_location),
        onPressed: () => context.read<MapPickerCubit>().getCurrentLocation(),
      ),
    );
  }

  Widget _buildBottomPanel(MapPickerState state, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildStateContent(state),
          const SizedBox(height: 8),
          _buildConfirmationButton(state, context),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildStateContent(MapPickerState state) {
    if (state is MapPickerLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state is MapPickerLoaded) {
      return Text(
        'Address: ${state.address}',
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.right,
      );
    }
    if (state is MapPickerError) {
      return Text(
        'Error: ${state.message}',
        style: const TextStyle(color: Colors.red),
        textAlign: TextAlign.right,
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildConfirmationButton(MapPickerState state, BuildContext context) {
    return CustomButton(
      text: "Confirm Location",
      onPressed: state is MapPickerLoaded
          ? () => _confirmLocation(state, context)
          : () {},
    );
  }

  void _confirmLocation(MapPickerLoaded state, BuildContext context) {
    final encodedAddress = Uri.encodeComponent(state.address);
    context.push(
      RouterNames.addClientDetailsView,
      extra: {
        'longitude': state.longitude,
        'latitude': state.latitude,
        'address': encodedAddress,
        'orderId': orderId,
        'isSameday': isSameday,
      },
    );
  }
}
