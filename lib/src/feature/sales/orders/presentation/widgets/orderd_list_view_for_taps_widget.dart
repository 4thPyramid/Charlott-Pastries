import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrdersListviewForTaps extends StatelessWidget {
  const OrdersListviewForTaps(
      {super.key,
      required this.orederId,
      required this.time,
      required this.itemCount,
      required this.onPressed});
  final int orederId;
  final String time;
  final int itemCount;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: OrdersTapsItemCardWidget(
                orederId: orederId,
                time: time,
                itemCount: itemCount,
                onPressed: onPressed,
              ));
        },
      ),
    );
  }
}

class OrdersTapsItemCardWidget extends StatelessWidget {
  const OrdersTapsItemCardWidget({
    super.key,
    required this.orederId,
    required this.time,
    required this.itemCount,
    required this.onPressed,
  });

  final int orederId;
  final String time;
  final int itemCount;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'طلب #$orederId',
        style: AppStyles.s16,
      ),
      subtitle: Text('$time · عناصر $itemCount',
          style: AppStyles.s14.copyWith(
            color: AppColors.whiteGreyForText,
          )),
      trailing: CustomButton(
        height: 30.h,
        width: 120.w,
        text: "عرض التفاصيل",
        textStyle: AppStyles.s16.copyWith(color: AppColors.primaryColor),
        backgroundColor: AppColors.scaffoldColor,
        onPressed: onPressed,
      ),
    );
  }
}
