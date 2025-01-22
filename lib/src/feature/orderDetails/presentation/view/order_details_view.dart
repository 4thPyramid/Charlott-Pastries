import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/client_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_details_image_header.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_price.dart';
import 'package:charlot/src/feature/orderDetails/presentation/componant/order_times.dart';
import 'package:flutter/material.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 0),
              child: CustomAppBar(
                title: "تفاصيل الطلب الجديد",
                iconLeft: Icons.arrow_back_ios_rounded,
              ),
            ),
            const OrderDetailsImageHeader(),
            const OrderTimes(),
            const SizedBox(height: 16),
            const ClientData(),
            const OrderData(),
            const OrderPrice(),
            CustomButton(
              text: "تأكيد الطلب",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
