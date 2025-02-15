import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';

class ReturnedOrderDetailsActions extends StatelessWidget {
  final VoidCallback onResendPressed;

  const ReturnedOrderDetailsActions({
    super.key,
    required this.onResendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomButton(
        text: AppStrings.resendOreder.tr(),
        onPressed: onResendPressed,
      ),
    );
  }
}