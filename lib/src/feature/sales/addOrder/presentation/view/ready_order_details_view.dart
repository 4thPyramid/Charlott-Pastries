import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/ready_order_details_componant.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/quantity_selector.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/ready_order_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyOrderDetailsView extends StatelessWidget {
  const ReadyOrderDetailsView({super.key, required this.orderId});
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: ReadyOrderDetailsComponant(),
      ),
    ));
  }
}
