import 'package:charlot/core/common/functions/image_downloader.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_images_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                onPressed: () {
                  // ImageDownloader()
                  //     .downloadImage(widget.images[_currentPage].image);
                },
              ),
            ),
            Positioned(
              left: 10.w,
              right: 10.w,
              bottom: 20,
              child: OrderImagesListView(
                images: widget.images,
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
