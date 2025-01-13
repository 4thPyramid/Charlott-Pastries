import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseUserTypeButton extends StatefulWidget {
  final VoidCallback? onTap;
  final bool isSelected;
  final String text;

  const ChooseUserTypeButton({
    super.key,
    this.onTap,
    this.isSelected = false,
    required this.text,
  });

  @override
  State<ChooseUserTypeButton> createState() => _ChooseUserTypeButtonState();
}

class _ChooseUserTypeButtonState extends State<ChooseUserTypeButton> {
  late bool isPressed;

  @override
  void initState() {
    super.initState();
    isPressed = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });

        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 56.h,
          width: 263.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.r),
            color: isPressed ? AppColors.primaryColor : Colors.white,
            border: Border.all(
              color: AppColors.primaryColor,
              width: 2.w,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: AppStyles.s24.copyWith(
                color: isPressed ? Colors.white : AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
