import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theme/app_colors.dart';

class DeliveryTimePicker extends StatefulWidget {
  final ValueChanged<TimeOfDay>? onTimeChanged;
  final TimeOfDay? initialTime;

  const DeliveryTimePicker({
    Key? key,
    this.onTimeChanged,
    this.initialTime,
  }) : super(key: key);

  @override
  _DeliveryTimePickerState createState() => _DeliveryTimePickerState();
}

class _DeliveryTimePickerState extends State<DeliveryTimePicker> {
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = widget.initialTime ?? TimeOfDay.now();

    // **إرسال القيمة الافتراضية فور تشغيل الواجهة**
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.onTimeChanged != null) {
        widget.onTimeChanged!(selectedTime!);
      }
    });
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime!,
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
      widget.onTimeChanged?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "وقت التسليم",
          style: AppStyles.s14.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () => _selectTime(context),
          child: Container(
            height: 50.h,
            width: 134.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedTime != null
                      ? selectedTime!.format(context)
                      : "وقت التسليم",
                  style: AppStyles.s14.copyWith(color: AppColors.black),
                ),
                const Icon(Icons.keyboard_arrow_down, color: AppColors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
