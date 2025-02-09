import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DateRowWidget extends StatefulWidget {
  final DateTime? initialDate;

  final ValueChanged<DateTime> onDateChanged;

  final bool isRequired;

  const DateRowWidget({
    Key? key,
    this.initialDate,
    required this.onDateChanged,
    this.isRequired = false,
  }) : super(key: key);

  @override
  State<DateRowWidget> createState() => _DateRowWidgetState();
}

class _DateRowWidgetState extends State<DateRowWidget> {
  final TextEditingController _dayController = TextEditingController();
  final TextEditingController _monthController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialDate != null) {
      _setInitialDate();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onDateChanged.call(widget.initialDate!);
      });
    }
  }

  void _setInitialDate() {
    final initial = widget.initialDate!;
    _dayController.text = DateFormat('dd').format(initial);
    _monthController.text = DateFormat('MM').format(initial);
    _yearController.text = DateFormat('yyyy').format(initial);
  }

  void _updateDate() {
    if (_dayController.text.isEmpty ||
        _monthController.text.isEmpty ||
        _yearController.text.isEmpty) {
      widget.onDateChanged.call(DateTime.now());
      return;
    }

    final day = int.tryParse(_dayController.text);
    final month = int.tryParse(_monthController.text);
    final year = int.tryParse(_yearController.text);

    if (day == null || month == null || year == null) {
      widget.onDateChanged.call(DateTime.now());
      return;
    }

    final date = DateTime(year, month, day);
    if (date.year != year || date.month != month || date.day != day) {
      widget.onDateChanged.call(DateTime.now());
      return;
    }

    widget.onDateChanged.call(date);
  }

  Widget _buildDateField(
    TextEditingController controller,
    String hint,
    int maxLength,
    int minValue,
    int maxValue,
  ) {
    return Expanded(
      child: Container(
        color: AppColors.white,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(maxLength),
          ],
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
          ),
          style: AppStyles.s14.copyWith(color: AppColors.black),
          onChanged: (value) => _updateDate(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return widget.isRequired ? 'مطلوب' : null;
            }
            final numValue = int.tryParse(value);
            if (numValue == null ||
                numValue < minValue ||
                numValue > maxValue) {
              return 'قيمة غير صالحة';
            }
            return null;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'الموعد المطلوب',
              style: AppStyles.s14.copyWith(fontWeight: FontWeight.w700),
            ),
            if (widget.isRequired)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Text(
                  '*',
                  style: AppStyles.s14.copyWith(color: Colors.red),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _buildDateField(_dayController, 'يوم', 2, 1, 31),
            const SizedBox(width: 30),
            _buildDateField(_monthController, 'شهر', 2, 1, 12),
            const SizedBox(width: 30),
            _buildDateField(_yearController, 'سنة', 4, 1900, 2100),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    _dayController.dispose();
    _monthController.dispose();
    _yearController.dispose();
    super.dispose();
  }
}
