import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class FlowerSelectionDropdowns extends StatelessWidget {
  final String? selectedType;
  final String? selectedColor;
  final ValueChanged<String?> onTypeChanged;
  final ValueChanged<String?> onColorChanged;

  const FlowerSelectionDropdowns({
    Key? key,
    this.selectedType,
    this.selectedColor,
    required this.onTypeChanged,
    required this.onColorChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                isExpanded: true,
                value: selectedType,
                onChanged: onTypeChanged,
                hint: Text('اختر نوع الورد', style: AppStyles.s14),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'جوري', child: Text('جوري')),
                  DropdownMenuItem(value: 'تيوليب', child: Text('تيوليب')),
                  DropdownMenuItem(value: 'ياسمين', child: Text('ياسمين')),
                ],
              ),
            ],
          ),
        ),
        
        SizedBox(width: 64.w),
        
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                isExpanded: true,
                value: selectedColor,
                onChanged: onColorChanged,
                hint: Text('اختر لون الورد', style: AppStyles.s14),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'احمر', child: Text('احمر')),
                  DropdownMenuItem(value: 'ابيض', child: Text('ابيض')),
                  DropdownMenuItem(value: 'وردي', child: Text('وردي')),
                  DropdownMenuItem(value: 'اصفر', child: Text('اصفر')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}