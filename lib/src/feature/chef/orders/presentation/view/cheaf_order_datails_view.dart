// lib/features/order_details/presentation/widgets/gallery_thumbnail.dart
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/action_button.dart';
import 'package:charlot/src/feature/chef/orders/presentation/widget/order_image_galary.dart';
import 'package:charlot/src/feature/orderDetails/presentation/view/order_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefOrdersDetailsView extends StatefulWidget {
  const ChefOrdersDetailsView({Key? key}) : super(key: key);

  @override
  State<ChefOrdersDetailsView> createState() => _ChefOrdersDetailsViewState();
}

class _ChefOrdersDetailsViewState extends State<ChefOrdersDetailsView> {
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
        body: SizedBox(
          height: 800.h,
          child: Column(
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
                      const OrderDetailsView(
                        from: '',
                        title: ' تفاصيل الطلب الجديد ',
                        orderStatus: 'طلب جديد',
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
      ),
    );
  }
}
