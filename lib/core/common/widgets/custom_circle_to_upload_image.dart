import 'dart:io';

import 'package:charlot/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CustomPersonalCircleImage extends StatefulWidget {
  final void Function(File) onImageSelected;
  final String? profileImage;

  const CustomPersonalCircleImage({
    super.key,
    required this.onImageSelected,
    this.profileImage,
  });

  @override
  State<CustomPersonalCircleImage> createState() =>
      _CustomPersonalCircleImageState();
}

class _CustomPersonalCircleImageState extends State<CustomPersonalCircleImage> {
  String? profileImage;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    profileImage = widget.profileImage?.isNotEmpty == true
        ? widget.profileImage!
        : 'https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc';
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile = await showModalBottomSheet<XFile?>(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Take a photo'),
                onTap: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    if (context.mounted) {
                      Navigator.pop(context, image);
                    }
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text('Choose from gallery'),
                onTap: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    if (context.mounted) {
                      Navigator.pop(context, image);
                    }
                  }
                },
              ),
            ],
          ),
        );
      },
    );

    if (pickedFile != null) {
      final File imageFile = File(pickedFile.path);
      setState(() {
        _imageFile = imageFile;
      });
      widget.onImageSelected(imageFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: _imageFile != null
                ? Image.file(
                    _imageFile!,
                    width: 120.r,
                    height: 120.r,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    profileImage ??
                        'https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc',
                    width: 120.r,
                    height: 120.r,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.file_upload_outlined,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}