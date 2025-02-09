import 'dart:io';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/flower_selection.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/date_row_widget.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowersSectionComponant extends StatelessWidget {
  final ValueChanged<String?> onTypeChanged;
  final ValueChanged<String?> onColorChanged;
  final ValueChanged<List<File>> onImagesChanged;

  final ValueChanged<DateTime> onDateChanged;

  const FlowersSectionComponant({
    super.key,
    required this.onTypeChanged,
    required this.onColorChanged,
    required this.onImagesChanged,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        FlowerSelectionDropdowns(
          onTypeChanged: onTypeChanged,
          onColorChanged: onColorChanged,
        ),
        // DateRowWidget(
        //   onDateChanged: onDateChanged,
        // ),
        ImagePickerWidget(
          onChanged: onImagesChanged,
          title: '',
        ),
      ],
    );
  }
}
