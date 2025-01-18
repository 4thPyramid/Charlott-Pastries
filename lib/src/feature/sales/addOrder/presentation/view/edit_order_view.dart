import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class EditOrderView extends StatelessWidget {
  const EditOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomAppBar(
              title: "تعديل طلب",
              iconleft: Icons.arrow_back_ios,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل اسم العميل",
              titelOfField: "اسم العميل",
              prefixIcon: Icons.person,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل رقم جوال العميل",
              titelOfField: "رقم الجوال",
              prefixIcon: Icons.phone_enabled,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل العنوان بالتفصيل",
              titelOfField: "العنوان",
              prefixIcon: Icons.location_on_sharp,
            ),
            const AuthTextFieldWidget(
                isPassword: false,
                hintText: "ادخل نوع الطلب",
                titelOfField: "نوع الطلب",
                prefixIcon: Icons.notes_sharp),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل الطلب بالتفصيل",
              titelOfField: "تفاصيل الطلب",
              prefixIcon: Icons.notes_sharp,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل السعر ",
              titelOfField: "السعر",
              prefixIcon: Icons.money,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل العربون ان وجد",
              titelOfField: "العربون",
              prefixIcon: Icons.money_off_csred_rounded,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل تاريخ التسليم",
              titelOfField: "الموعد المطلوب",
              prefixIcon: Icons.data_exploration_outlined,
              sufixIcon: Icons.calendar_month,
            ),
            CustomButton(text: "اضافة الطلب", onPressed: () {}),
          ],
        )),
      ),
    );
  }
}
