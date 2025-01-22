// lib/features/order_details/presentation/widgets/gallery_thumbnail.dart
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/action_button.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/order_image_galary.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/order_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  int _selectedImageIndex = 0;

  final List<String> orderImages = [
    AppAssets.logo,
    AppAssets.home,
    AppAssets.logo,
    AppAssets.home,
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OrderImageGallery(
              images: orderImages,
              selectedIndex: _selectedImageIndex,
              onImageSelected: (index) {
                setState(() => _selectedImageIndex = index);
              },
            ),
            Container(
              height: 400.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const OrderInfoSection(
                      type: 'حلويات غربية',
                      description: 'تورتة عيد ميلاد بالشوكولاتة',
                      date: '2025/1/15',
                    ),
                    ActionButtons(
                      onAccept: () {},
                      onReject: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
