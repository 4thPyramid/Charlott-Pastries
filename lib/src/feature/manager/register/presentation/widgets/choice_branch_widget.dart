import 'package:charlot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/models/branches_model.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
class ChoiceBranch extends StatefulWidget {
  final void Function(Branch) onBranchSelected;
  final Branch? initialBranch;

  const ChoiceBranch({
    super.key,
    required this.onBranchSelected,
    this.initialBranch,
  });

  @override
  State<ChoiceBranch> createState() => _ChoiceBranchState();
}

class _ChoiceBranchState extends State<ChoiceBranch> {
  Branch? selectedBranch;

  @override
  void initState() {
    super.initState();
    selectedBranch = widget.initialBranch;
  }

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
              child: DropdownButton<Branch>(
                value: selectedBranch,
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
                  return BranchesData.branches.map<Widget>((Branch branch) {
                    return Row(
                      children: [
                        const Icon(
                          Icons.apartment,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          branch.name,
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
                items: BranchesData.branches.map((Branch branch) {
                  return DropdownMenuItem<Branch>(
                    value: branch,
                    child: Text(
                      branch.name,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (Branch? newBranch) {
                  if (newBranch != null) {
                    setState(() {
                      selectedBranch = newBranch;
                    });
                    widget.onBranchSelected(newBranch);
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