import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_images_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsImageHeader extends StatefulWidget {
  const OrderDetailsImageHeader({super.key});

  @override
  State<OrderDetailsImageHeader> createState() =>
      _OrderDetailsImageHeaderState();
}

class _OrderDetailsImageHeaderState extends State<OrderDetailsImageHeader> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
    AppAssets.home,
    AppAssets.logo,
    AppAssets.home,
    AppAssets.logo,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main Image Carousel
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
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                ),
                Container(
                  height: 50.h,
                ),
              ],
            ),
            // Thumbnail images

            Positioned(
             // top: 230.h,
              left: 10.w,
              right: 10.w,
              bottom: 20,
              child: OrderImagesListView(
                images: images,
                pageController: _pageController,
                currentPage: _currentPage,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
