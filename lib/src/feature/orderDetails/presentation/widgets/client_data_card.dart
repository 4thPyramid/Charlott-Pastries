import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/src/feature/orderDetails/presentation/widgets/client_item_data_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientDataCard extends StatelessWidget {
  const ClientDataCard({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
  });
  final String name;
  final String phone;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
    //  height: 232,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 16.h),
            ClientItemDataRowWidget(
              title: "اسم العميل",
              name: name,
              icon: Icons.person,
              iconColor: Colors.blue,
            ),
            const Divider(),
            ClientItemDataRowWidget(
              title: 'رقم الجوال',
              name: phone,
              icon: Icons.phone,
              iconColor: AppColors.orange,
            ),
            const Divider(),
            ClientItemDataRowWidget(
              title: 'عنوانه',
              name: address,
              icon: Icons.location_on_outlined,
              iconColor: Colors.red,
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
