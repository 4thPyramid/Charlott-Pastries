import 'dart:io';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/datails_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';

class FlowersSectionComponant extends StatelessWidget {
  final ValueChanged<File?>? onImagesChanged;

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
        FlowerImagePickerWidget(
          onChanged: onImagesChanged,
          title: 'flowersImages'.tr(),
        ),
      ],
    );
  }
}


class FlowerImagePickerWidget extends StatefulWidget {
  final String title;
  final File? initialImage;
  final ValueChanged<File?>? onChanged;

  const FlowerImagePickerWidget({
    super.key,
    required this.title,
    this.initialImage,
    this.onChanged,
  });

  @override
  State<FlowerImagePickerWidget> createState() =>
      _FlowerImagePickerWidgetState();
}

class _FlowerImagePickerWidgetState extends State<FlowerImagePickerWidget> {
  File? _selectedImage;

  @override
  void initState() {
    super.initState();
    _selectedImage = widget.initialImage;
  }

  void _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
      widget.onChanged?.call(_selectedImage);
    }
  }

  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
    widget.onChanged?.call(_selectedImage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppStyles.s14.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        GestureDetector(
          onTap: _pickImage,
          child: Container(
            width: 354.w,
            height: 130.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grey),
            ),
            child: _selectedImage == null
                ? const Center(
                    child: Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 30,
                      color: AppColors.greyForText,
                    ),
                  )
                : Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          _selectedImage!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: GestureDetector(
                          onTap: _removeImage,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            padding: const EdgeInsets.all(4),
                            child: const Icon(
                              Icons.close,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
