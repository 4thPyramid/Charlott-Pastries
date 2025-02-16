import 'dart:io';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/datails_field.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowersSectionComponant extends StatelessWidget {
  final ValueChanged<List<File>> onImagesChanged;

  final TextEditingController controller;

  const FlowersSectionComponant({
    super.key,
    required this.onImagesChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        DetailsField(
          textEditingController: controller,
          text: "flowersDetails".tr(),
        ),
        ImagePickerWidget(
          onChanged: onImagesChanged,
          title: 'flowersImages'.tr(),
        ),
      ],
    );
  }
}
