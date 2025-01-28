import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class ChoiceBranch extends StatefulWidget {
  const ChoiceBranch({super.key});

  @override
  State<ChoiceBranch> createState() => _ChoiceBranchState();
}

class _ChoiceBranchState extends State<ChoiceBranch> {
  String? selectedValue;

  final List<String> items = const [
    "الفرع الاول",
    "الفرع الثاني",
    "الفرع الثالث",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, right: 8.w, left: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.choiceBranch,
            style: AppStyles.s14.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedValue,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.apartment,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppStrings.choiceBranch,
                      style: TextStyle(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
                selectedItemBuilder: (BuildContext context) {
                  return items.map<Widget>((String item) {
                    return Row(
                      children: [
                        const Icon(
                          Icons.apartment,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          item,
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    );
                  }).toList();
                },
                isExpanded: true,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.primaryColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                borderRadius: BorderRadius.circular(10),
                items: items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}