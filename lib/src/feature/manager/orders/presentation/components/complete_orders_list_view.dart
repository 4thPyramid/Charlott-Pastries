import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/manager/orders/presentation/logic/completed/completed_order_cubit.dart';
import 'package:charlot/src/feature/manager/orders/presentation/logic/completed/completed_order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManagerCompleteOrdersListView extends StatefulWidget {
  const ManagerCompleteOrdersListView({super.key});

  @override
  State<ManagerCompleteOrdersListView> createState() =>
      _ManagerCompleteOrdersListViewState();
}

class _ManagerCompleteOrdersListViewState
    extends State<ManagerCompleteOrdersListView> {
  late CompletedOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<CompletedOrdersCubit>();
    _cubit.call(null, null); // Initial call with no filters
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
          CustomDateFilter(
            onFilterApplied: (startDate, endDate) {
              _cubit.call(startDate, endDate); // Call Cubit with selected dates
            },
          ),
          Expanded(
            child: BlocBuilder<CompletedOrdersCubit, CompletedOrderState>(
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
                          child:
                              Text('لا توجد طلبات مكتملة في الفترة المحددة'));
                    }
                    return ListView.builder(
                      itemCount: ordersResponse.orders.length,
                      itemBuilder: (context, index) => SharedOrderItemCard(
                        orderResponse: ordersResponse.orders[index],
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
}

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
            onPressed: _applyFilter,
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
            endDate = null; // Reset end date if it’s before the new start date
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
          content: Text('تاريخ البداية يجب أن يكون قبل تاريخ النهاية'),
        ),
      );
      return;
    }
    widget.onFilterApplied(startDate, endDate);
  }
}
