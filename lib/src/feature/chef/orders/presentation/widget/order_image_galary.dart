// lib/features/order_details/presentation/widgets/order_image_gallery.dart
import 'package:charlot/src/feature/chef/orders/presentation/widget/gallary_thumpnail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderImageGallery extends StatelessWidget {
  final List<String> images;
  final int selectedIndex;
  final ValueChanged<int> onImageSelected;

  const OrderImageGallery({
    Key? key,
    required this.images,
    required this.selectedIndex,
    required this.onImageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Stack(
        children: [
          // Main Image
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              images[selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
          // Thumbnails
          Positioned(
            bottom: 16.h,
            right: 25.w,
            left: 25.w,
            child: Center(
              child: Container(
                height: 100.h,
                width: 353.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) => GalleryThumbnail(
                    imageUrl: images[index],
                    isSelected: selectedIndex == index,
                    onTap: () => onImageSelected(index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
