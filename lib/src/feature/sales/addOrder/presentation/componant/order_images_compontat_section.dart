import 'dart:io';

import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrederImageSection extends StatefulWidget {
  const OrederImageSection({super.key});

  @override
  State<OrederImageSection> createState() => _OrederImageSectionState();
}

class _OrederImageSectionState extends State<OrederImageSection> {
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ImagePickerWidget(
        title: 'addImages'.tr(),
        initialImages: images,
        onChanged: (updatedImages) {
          setState(() {
            images = updatedImages;
          });
        },
      ),
    );
  }
}
