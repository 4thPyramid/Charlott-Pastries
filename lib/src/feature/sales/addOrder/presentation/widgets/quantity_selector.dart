import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantitySelector extends StatefulWidget {
  final int initialValue;
  final int minValue;
  final ValueChanged<int>? onChanged;

  const QuantitySelector({
    super.key,
    this.initialValue = 0,
    this.minValue = 0,
    this.onChanged,
  });

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _counter++;
    });
    widget.onChanged?.call(_counter);
  }

  void _decrement() {
    if (_counter > widget.minValue) {
      setState(() {
        _counter--;
      });
      widget.onChanged?.call(_counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الكمية',
          style: AppStyles.s14.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 130.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
                onPressed: _increment,
                tooltip: 'Increase',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('$_counter',
                    style: AppStyles.s16.copyWith(
                      fontWeight: FontWeight.w600,
                    )),
              ),
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: AppColors.white,
                  ),
                ),
                onPressed: _decrement,
                tooltip: 'Decrease',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
