import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/models/specialization_model.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';

class ChoiceSpecialization extends StatefulWidget {
  final void Function(Specialization) onSpecializationSelected;
  final Specialization? initialSpecialization;

  const ChoiceSpecialization({
    super.key,
    required this.onSpecializationSelected,
    this.initialSpecialization,
  });

  @override
  State<ChoiceSpecialization> createState() => _ChoiceSpecializationState();
}

class _ChoiceSpecializationState extends State<ChoiceSpecialization> {
  Specialization? selectedSpecialization;

  @override
  void initState() {
    super.initState();
    selectedSpecialization = widget.initialSpecialization;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, right: 8.w, left: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.choiceSpecialization,
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
              child: DropdownButton<Specialization>(
                value: selectedSpecialization,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.auto_awesome ,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppStrings.choiceSpecialization,
                      style: TextStyle(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
                selectedItemBuilder: (BuildContext context) {
                  return SpecializationsData.specializations.map<Widget>((Specialization specialization) {
                    return Row(
                      children: [
                        const Icon(
                          Icons.auto_awesome,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          specialization.name,
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
                items: SpecializationsData.specializations.map((Specialization specialization) {
                  return DropdownMenuItem<Specialization>(
                    value: specialization,
                    child: Text(
                      specialization.name,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (Specialization? newSpecialization) {
                  if (newSpecialization != null) {
                    setState(() {
                      selectedSpecialization = newSpecialization;
                    });
                    widget.onSpecializationSelected(newSpecialization);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}