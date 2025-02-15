import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/specialization_feature/data/models/specialization_model.dart';
import '../../../../../../core/common/specialization_feature/presentation/logic/cubit/specialization_cubit.dart';
import '../../../../../../core/common/specialization_feature/presentation/logic/cubit/specialization_state.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
class ChoiceSpecialization extends StatefulWidget {
  final void Function(SpecializationModel) onSpecializationSelected;
  final SpecializationModel? initialSpecialization;

  const ChoiceSpecialization({
    super.key,
    required this.onSpecializationSelected,
    this.initialSpecialization,
  });

  @override
  State<ChoiceSpecialization> createState() => _ChoiceSpecializationState();
}

class _ChoiceSpecializationState extends State<ChoiceSpecialization> {
  SpecializationModel? selectedSpecialization;

  @override
  void initState() {
    super.initState();
    selectedSpecialization = widget.initialSpecialization;
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
              create: (context) => getIt<SpecializationCubit>()..getSpecialization(),
              child :Padding(
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
            child: BlocBuilder<SpecializationCubit, SpecializationState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (specializationResponse) => 
                    _buildDropdown(specializationResponse.specializations),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                );
              },
            ),
          ),
        ],
      ),
              )
    );
  }

  Widget _buildDropdown(List<SpecializationModel> specializations) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<SpecializationModel>(
        value: selectedSpecialization,
        hint: const Row(
          children: [
            Icon(
              Icons.auto_awesome,
              color: AppColors.primaryColor,
            ),
            SizedBox(width: 8),
            Text(
              AppStrings.choiceSpecialization,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
        selectedItemBuilder: (BuildContext context) {
          return specializations.map<Widget>((SpecializationModel specialization) {
            return Row(
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 8.w),
                Text(
                  specialization.name,
                  overflow: TextOverflow.ellipsis,
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
        items: specializations.map((SpecializationModel specialization) {
          return DropdownMenuItem<SpecializationModel>(
            value: specialization,
            child: Text(
              specialization.name,
              style: const TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (SpecializationModel? newSpecialization) {
          if (newSpecialization != null) {
            setState(() {
              selectedSpecialization = newSpecialization;
            });
            widget.onSpecializationSelected(newSpecialization);
          }
        },
      ),
    );
  }
}