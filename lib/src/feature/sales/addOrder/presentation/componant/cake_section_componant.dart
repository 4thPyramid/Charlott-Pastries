import 'dart:io';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/datails_field.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CakeSectionComponant extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<List<File>> onImagesChanged;

  final ValueChanged<DateTime> onDateChanged;

  const CakeSectionComponant({
    super.key,
    required this.controller,
    required this.onImagesChanged,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        DetailsField(
          textEditingController: controller,
          text: 'تفاصيل طلب الكيك',
        ),
        ImagePickerWidget(
          onChanged: onImagesChanged,
          title: '',
        ),
      ],
    );
  }
}
