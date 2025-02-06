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
    return SizedBox(
      height: 1000.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              OrderImageGallery(
                images: orderImages,
                selectedIndex: _selectedImageIndex,
                onImageSelected: (index) {
                  setState(() => _selectedImageIndex = index);
                },
              ),
              
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const OrderDetailsView(
                          from: 'chef',
                          title: 'تفاصيل الطلب الجديد',
                           orderId: 0,
                        ),
                        SizedBox(height: 20.h),
                          Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[90],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text("مواعيد استلام الاوردار", style: TextStyle(fontSize: 16.sp)),
                             Spacer(),
                              Text(" 2025/1/20", style: TextStyle(fontSize: 16.sp)),
                            
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                         Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("بيانات الطلب", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                              SizedBox(height: 10.h),
                              ListTile(
                                leading: Image.asset(AppAssets.home, width: 50.w, height: 50.h),
                                title: const Text("تورتة عيد ميلاد",style: TextStyle(fontSize: 16),),
                                subtitle: const Text("الحجم: وسط\nالمقاس: 90*50"),
                              ),
                           
                        const Spacer(),
                                ActionButtons(
                          onAccept: () {
                          },
                          onReject: () {
                          },
                        ),
                      ],
                    ),
                  ),
                ]
                   ),
                  )
                ),
              )
         ] )
        )
      )
    );
  }
}
