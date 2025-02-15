import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/chef/problems/presentation/widget/problem_action_buttons.dart';
import 'package:charlot/src/feature/chef/problems/presentation/widget/problem_details.dart';
import 'package:charlot/src/feature/chef/problems/presentation/widget/problem_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../generated/app_strings.g.dart';

class ReportProblemScreen extends StatefulWidget {
  const ReportProblemScreen({super.key});

  @override
  State<ReportProblemScreen> createState() => _ReportProblemScreenState();
}

class _ReportProblemScreenState extends State<ReportProblemScreen> {
  String? selectedProblem;
  final TextEditingController _detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: AppStrings.reportProblem),
            SizedBox(height: 10.h),
            Column(
              children: [
                ProblemOptions(
                  selectedProblem: selectedProblem,
                  onSelected: (value) {
                    setState(() => selectedProblem = value);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
            ProblemDetails(controller: _detailsController),
            SizedBox(height: 45.h),
            ProblemActionButtons(
              onAccept: () {},
              onReject: () {})
          ],
        ),
      ),
    );
  }
}
