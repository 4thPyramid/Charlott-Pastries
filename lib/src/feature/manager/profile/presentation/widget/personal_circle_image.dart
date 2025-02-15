import 'dart:io';

import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';


import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_image_view.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../logic/profile_cubit.dart';

class PersonalCircleImage extends StatefulWidget {
  const PersonalCircleImage({super.key, this.profileImage, required this.userType});

  final String? profileImage;
  final String userType;
  @override
  State<PersonalCircleImage> createState() => _PersonalCircleImageState();
}

class _PersonalCircleImageState extends State<PersonalCircleImage> {
  String? profileImage;

  @override
  void initState() {
    super.initState();
    profileImage = widget.profileImage?.isNotEmpty == true
        ? widget.profileImage!
        : AppAssets.profileImage;
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
                title:  Text(AppStrings.takePhoto.tr()),
                onTap: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    if (context.mounted) {
                      Navigator.pop(context,
                          image); // إرجاع الصورة للـ showModalBottomSheet
                    }
                  }
                 // context.go(RouterNames.personalInfoView);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title:  Text(AppStrings.chooseFromGallery.tr()),
                onTap: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    if (context.mounted) {
                      Navigator.pop(context,
                          image); // إرجاع الصورة للـ showModalBottomSheet
                    }
                  }
                  //context.go(RouterNames.personalInfoView);
                },
              ),
            ],
          ),
        );
      },
    );

    if (pickedFile != null) {
      final File? imageFile = File(pickedFile.path);

      setState(() {
        profileImage = imageFile!.path;
      });

      context.read<ProfileCubit>().updateProfilePhoto(imageFile, userTyp:widget.userType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            profileImage ?? AppAssets.profileImage,
            width: 120.r,
            height: 120.r,
            fit: BoxFit.cover,
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
              child: AppImageView(
                AppAssets.editCamera,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
