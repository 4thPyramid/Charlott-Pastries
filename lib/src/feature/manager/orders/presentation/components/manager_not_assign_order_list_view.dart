import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/shared_order_item_card.dart';
import '../../../../../../core/services/service_locator.dart';
import '../logic/not_assign/not_assign_order_cubit.dart';
import '../logic/not_assign/not_assign_order_state.dart';

class ManagerNotAssignOrdersListView extends StatefulWidget {
  const ManagerNotAssignOrdersListView({super.key});

  @override
  State<ManagerNotAssignOrdersListView> createState() =>
      _ManagerNotAssignOrdersListViewState();
}

class _ManagerNotAssignOrdersListViewState
    extends State<ManagerNotAssignOrdersListView> {
  DateTime? startDate;
  DateTime? endDate;
  late NotAssignOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<NotAssignOrdersCubit>();
    _applyFilter(); // جلب البيانات عند البدء
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Column(
        children: [
          _buildDatePicker(context), // أضف واجهة اختيار التواريخ
          Expanded(
            child: BlocBuilder<NotAssignOrdersCubit, NotAssignOrderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                      child: Text('الرجاء تحديد تاريخ البداية والنهاية')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: (error) =>
                      Center(child: Text('خطأ: ${error.message}')),
                  success: (ordersResponse) {
                    if (ordersResponse.orders.isEmpty) {
                      return const Center(
                          child: Text(
                              'لا توجد طلبات غير معينة في الفترة المحددة'));
                    }
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      itemCount: ordersResponse.orders.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: SharedOrderItemCard(
                          orderResponse: ordersResponse.orders[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  startDate != null
                      ? '${startDate!.day}/${startDate!.month}/${startDate!.year}'
                      : 'اختر تاريخ البداية',
                ),
                onPressed: () async => await _selectDate(true),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  endDate != null
                      ? '${endDate!.day}/${endDate!.month}/${endDate!.year}'
                      : 'اختر تاريخ النهاية',
                ),
                onPressed: () async => await _selectDate(false),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () => _applyFilter(),
            child: const Text('تطبيق التصفية'),
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
      helpText: isStartDate ? 'اختر تاريخ البداية' : 'اختر تاريخ النهاية',
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
            content: Text('تاريخ البداية يجب أن يكون قبل تاريخ النهاية')),
      );
      return;
    }

    _cubit.call(startDate, endDate); // تطبيق التصفية
  }
}
