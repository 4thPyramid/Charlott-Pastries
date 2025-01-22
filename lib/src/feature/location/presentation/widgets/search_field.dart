// ملف: search_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'ابحث عن مكان...',
        prefixIcon: const Icon(Icons.search),
        // suffixIcon: _buildClearButton(),
        border: const OutlineInputBorder(),
      ),
      onSubmitted: (query) => _handleSearch(query, context),
    );
  }

  // Widget? _buildClearButton() {
  //   return IconButton(
  //     icon: const Icon(Icons.clear),
  //     onPressed: () {
  //       _controller.clear();
  //       context.read<MapPickerCubit>().clearSearch();
  //     },
  //   );
  // }

  void _handleSearch(String query, BuildContext context) {
    if (query.isEmpty) return;
    context.read<MapPickerCubit>().searchPlace(query);
  }
}
