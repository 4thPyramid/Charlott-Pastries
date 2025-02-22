import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/common/branches_feature/data/models/branch_model.dart';
import '../../../../../../../core/utils/app_styles.dart';
import '../../../../../manager/register/presentation/widgets/choice_branch_widget.dart';
Future<int?> popToChoiceBranch(BuildContext context,
    {required String title,
    required String buttonTitle,
    required BranchModel? selectedBranch}) async {
  return await showDialog<int>(
    context: context,
    builder: (context) {
      BranchModel? selected = selectedBranch;
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ChoiceBranch(
                  onBranchSelected: (branch) {
                    selected = branch;
                  },
                ),
                SizedBox(height: 36.h),
                Text(
                  title,
                  style: AppStyles.s20.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (selected != null) {
                    Navigator.of(context).pop(selected!.id);
                  }
                },
                child: Text(buttonTitle),
              ),
            ],
          );
        },
      );
    },
  );
}
