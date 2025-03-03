import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../data/model/order_details_response.dart';

class OrderDetailsImageHeader extends StatefulWidget {
  const OrderDetailsImageHeader({super.key, required this.images});
  final List<OrderImageDetails> images;

  @override
  State<OrderDetailsImageHeader> createState() =>
      _OrderDetailsImageHeaderState();
}

class _OrderDetailsImageHeaderState extends State<OrderDetailsImageHeader> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _requestPermissions() async {
    if (Platform.isAndroid) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();

      if (statuses[Permission.storage]!.isGranted) {
        print("تم منح الإذن على Android");
      } else {
        print("تم رفض الإذن على Android");
        if (statuses[Permission.storage]!.isPermanentlyDenied) {
          openAppSettings();
        }
      }
    } else if (Platform.isIOS) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.photos,
        Permission.photosAddOnly,
      ].request();

      if (statuses[Permission.photos]!.isGranted ||
          statuses[Permission.photosAddOnly]!.isGranted) {
        print("تم منح الإذن على iOS");
      } else {
        print("تم رفض الإذن على iOS");
        if (statuses[Permission.photos]!.isPermanentlyDenied) {
          openAppSettings();
        }
      }
    }
  }

  Future<void> _downloadCurrentImage() async {
    final imageUrl = widget.images[_currentPage].image;

    Directory? directory;

    if (Platform.isAndroid) {
      directory = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      directory =
          await getApplicationDocumentsDirectory(); // iOS لا يدعم التخزين الخارجي
    }

    final savedDir = directory?.path;

    if (savedDir == null) {
      print("فشل في الحصول على مسار التخزين");
      return;
    }

    try {
      final taskId = await FlutterDownloader.enqueue(
        url: imageUrl,
        savedDir: savedDir,
        showNotification: true,
        openFileFromNotification: true,
        saveInPublicStorage: Platform.isAndroid, // تجنب استخدامه على iOS
      );

      print("تم بدء التنزيل، Task ID: $taskId");
    } catch (e) {
      print("حدث خطأ أثناء التنزيل: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: widget.images.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        widget.images[index].image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.download_rounded,
                    color: Colors.white, size: 30),
                onPressed: () async {
                  await _requestPermissions();
                  await _downloadCurrentImage();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
