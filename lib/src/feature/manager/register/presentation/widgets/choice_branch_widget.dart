import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/branches_feature/data/models/branch_model.dart';
import '../../../../../../core/common/branches_feature/presentation/logic/cubit/cubit/branches_cubit.dart';
import '../../../../../../core/common/branches_feature/presentation/logic/cubit/cubit/branches_state.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/app_strings.g.dart';
class ChoiceBranch extends StatefulWidget {
  final void Function(BranchModel) onBranchSelected;
  final BranchModel? initialBranch;

  const ChoiceBranch({
    super.key,
    required this.onBranchSelected,
    this.initialBranch,
  });

  @override
  State<ChoiceBranch> createState() => _ChoiceBranchState();
}

class _ChoiceBranchState extends State<ChoiceBranch> {
  BranchModel? selectedBranch;

  @override
  void initState() {
    super.initState();
    selectedBranch = widget.initialBranch;
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
              create: (context) => getIt<BranchesCubit>()..getBranches(),
              child: Padding(
      padding: EdgeInsets.only(top: 12.h, right: 8.w, left: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.choiceBranch.tr(),
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
            child: BlocBuilder<BranchesCubit, BranchesState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (branchResponse) => _buildDropdown(branchResponse.branches),
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

  Widget _buildDropdown(List<BranchModel> branches) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<BranchModel>(
        value: selectedBranch,
        hint:  Row(
          children: [
            const Icon(
              Icons.apartment,
              color: AppColors.primaryColor,
            ),
            const SizedBox(width: 8),
            Text(
              AppStrings.choiceBranch.tr(),
                            overflow: TextOverflow.ellipsis,

              style: const TextStyle(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
        selectedItemBuilder: (BuildContext context) {
          return branches.map<Widget>((BranchModel branch) {
            return Row(
              children: [
                const Icon(
                  Icons.apartment,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 8.w),
                Flexible(
                  child: Text(
                    branch.name,
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                    ),
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
        items: branches.map((BranchModel branch) {
          return DropdownMenuItem<BranchModel>(
            value: branch,
            child: Text(
              branch.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (BranchModel? newBranch) {
          if (newBranch != null) {
            setState(() {
              selectedBranch = newBranch;
            });
            widget.onBranchSelected(newBranch);
          }
        },
      ),
    );
  }
}