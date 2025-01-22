// ملف: map_picker_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_state.dart';
import 'package:charlot/src/feature/location/presentation/widgets/map_widget.dart';
import 'package:charlot/src/feature/location/presentation/widgets/search_field.dart';

class MapPickerView extends StatelessWidget {
  const MapPickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اختر الموقع')),
      body: BlocBuilder<MapPickerCubit, MapPickerState>(
        builder: (context, state) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SearchField(),
              ),
              Expanded(
                child: MapWidget(
                  onMapCreated: context.read<MapPickerCubit>().setMapController,
                ),
              ),
              _buildBottomPanel(state, context),
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
        'العنوان: ${state.address}',
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.right,
      );
    }
    if (state is MapPickerError) {
      return Text(
        'خطأ: ${state.message}',
        style: const TextStyle(color: Colors.red),
        textAlign: TextAlign.right,
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildConfirmationButton(MapPickerState state, BuildContext context) {
    return ElevatedButton(
      onPressed: state is MapPickerLoaded
          ? () => _confirmLocation(state, context)
          : null,
      child: const Text('تأكيد الموقع'),
    );
  }

  void _confirmLocation(MapPickerLoaded state, BuildContext context) {
    Navigator.pop(context, {
      'address': state.address,
      'latitude': state.latitude,
      'longitude': state.longitude,
    });
  }
}
