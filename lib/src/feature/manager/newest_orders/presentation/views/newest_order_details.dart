import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../home/presentation/widgets/custom_title.dart';
import '../widgets/accept_order_pop.dart';
import '../widgets/first_container_for_order_date.dart';
import '../widgets/newest_order_build_info_field.dart';
import '../widgets/second_container_for_details.dart';
import '../widgets/third_container_for_customer.dart';

class NewestOrderDetails extends StatelessWidget {
  const NewestOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyForSelectTap,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: " تفاصيل الطلب الجديد ",
                iconLeft: Icons.arrow_back_ios,
                onPressedLeft: () {
                  Navigator.pop(context);
                },
              ),
              const NewestOrderDetailsComponents(),
            ],
          ),
        ));
  }
}

class NewestOrderDetailsComponents extends StatelessWidget {
  const NewestOrderDetailsComponents({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FirstContainerForOrderDate(),
            const SizedBox(height: 20),
            const CustomTitle(title: "تفاصيل الطلب"),
            const SizedBox(height: 10),
            const SecondContainerForDetails(),
            const SizedBox(height: 20),
            const CustomTitle(title: "تفاصيل العميل"),
            const SizedBox(height: 10),
            const ThirdContainerForCustomer(),
            const SizedBox(height: 40),
            Align(
                alignment: Alignment.center,
                child: CustomButton(
               
                  text: "قبول الطلب", onPressed: () {
                  acceptOrderPop(context ,"routeName", title: ' تم قبول  الطلب ', buttonTitle: '"اختر الشيف"',onPressed: (){
                     context.push(RouterNames.selectChef);
                  } );
                })),
            const SizedBox(height: 40),
          ],
        ));
  }
}
