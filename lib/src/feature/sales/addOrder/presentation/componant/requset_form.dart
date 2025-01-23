import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/datails_field.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/date_row_widget.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/quantity_selector.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/request_type_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestForm extends StatelessWidget {
  const RequestForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RequestTypeDropdown(
            value: null,
            onChanged: (String? value) {},
          ),
          SizedBox(height: 10.h),
          const DetailsField(),
          SizedBox(height: 10.h),
          const QuantitySelector(),
          SizedBox(height: 10.h),
          const DateRowWidget(),
          SizedBox(height: 10.h),
          const ImagePickerSection(),
          SizedBox(height: 10.h),
          Center(child: CustomButton(text: "التالي", onPressed: () {})),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
