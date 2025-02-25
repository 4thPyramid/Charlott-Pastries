import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDateFilter extends StatefulWidget {
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final Function(DateTime?, DateTime?) onFilterApplied;

  const CustomDateFilter({
    super.key,
    this.initialStartDate,
    this.initialEndDate,
    required this.onFilterApplied,
  });

  @override
  State<CustomDateFilter> createState() => _CustomDateFilterState();
}

class _CustomDateFilterState extends State<CustomDateFilter> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    startDate = widget.initialStartDate;
    endDate = widget.initialEndDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: const BorderSide(color: AppColors.primaryColor),
                  fixedSize: Size(140.w, 50.h),
                ),
                icon: const Icon(Icons.calendar_today_outlined),
                label: Text(
                  startDate != null
                      ? '${startDate!.day}/${startDate!.month}/${startDate!.year}'
                      : 'From',
                  style: AppStyles.s14.copyWith(
                    color: AppColors.white,
                  ),
                ),
                onPressed: () async => await _selectDate(true),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: const BorderSide(color: AppColors.primaryColor),
                  fixedSize: Size(140.w, 50.h),
                ),
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  endDate != null
                      ? '${endDate!.day}/${endDate!.month}/${endDate!.year}'
                      : 'To',
                  style: AppStyles.s14.copyWith(
                    color: AppColors.white,
                  ),
                ),
                onPressed: () async => await _selectDate(false),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primaryColor,
                    fixedSize: Size(70.w, 50.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: _applyFilter,
                child: const Icon(Icons.filter_list_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(bool isStartDate) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      helpText: isStartDate ? 'From' : 'To',
    );

    if (pickedDate != null) {
      setState(() {
        if (isStartDate) {
          startDate = pickedDate;
          if (endDate != null && startDate!.isAfter(endDate!)) {
            endDate = null;
          }
        } else {
          endDate = pickedDate;
        }
      });
    }
  }

  void _applyFilter() {
    if (startDate != null && endDate != null && startDate!.isAfter(endDate!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' Start date must be before end date'),
        ),
      );
      return;
    }
    widget.onFilterApplied(startDate, endDate);
  }
}
