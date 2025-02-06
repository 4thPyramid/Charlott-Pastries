import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClientDatailsForm extends StatelessWidget {
  const ClientDatailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("اسم العميل",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل اسم العميل',
            prefixIcon:
                Icon(Icons.edit_note_outlined, size: 30, color: AppColors.blue),
          ),
          SizedBox(height: 10.h),
          Text("رقم الجوال",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل رقم الجوال الخاص بالعميل',
            prefixIcon: Icon(
              Icons.phone,
              size: 30,
              color: AppColors.orange,
            ),
          ),
          SizedBox(height: 10.h),
          Text("العنوان",
              style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.w700,
              )),
          SizedBox(height: 10.h),
          const CustomTextFormField(
            hintText: 'ادخل السعر',
            prefixIcon: Icon(
              Icons.location_on_outlined,
              size: 30,
              color: AppColors.errorColor,
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: CustomButton(
                text: "التالي",
                onPressed: () {
                  context.go(RouterNames.mapPicker);
                }),
          ),
        ],
      ),
    );
  }
}
