import 'package:charlot/core/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderFilter extends StatefulWidget {
  const OrderFilter({super.key});

  @override
  State<OrderFilter> createState() => _OrderFilterState();
}

class _OrderFilterState extends State<OrderFilter> {
  String selectedFilter = 'all'.tr();

  final List<String> filters = [
    'all'.tr(),
    ' newOrders'.tr(),
    'inProgressOrders'.tr(),
    'completedOrders'.tr(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: filters.map((filter) {
          final isSelected = selectedFilter == filter;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ChoiceChip(
              checkmarkColor: AppColors.white,
              label: Text(
                filter,
                style: TextStyle(
                  color: isSelected ? AppColors.white : AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              selected: isSelected,
              onSelected: (bool selected) {
                setState(() {
                  selectedFilter = filter;
                });
              },
              selectedColor: AppColors.primaryColor,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.primaryColor.withOpacity(0.5),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
