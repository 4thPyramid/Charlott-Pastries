import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../generated/app_strings.g.dart';
import '../logic/new_orders/new_orders_cubit.dart';
import '../logic/new_orders/new_orders_state.dart';
import '../widgets/newest_order_card_item.dart';

class NewestOrderListView extends StatefulWidget {
  const NewestOrderListView({super.key});

  @override
  State<NewestOrderListView> createState() => _NewestOrderListViewState();
}

class _NewestOrderListViewState extends State<NewestOrderListView> {
  DateTime? startDate;
  DateTime? endDate;
  late ManagerNewOrdersCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<ManagerNewOrdersCubit>();
    _applyFilter();
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
          // _buildDatePicker(context),
          BlocBuilder<ManagerNewOrdersCubit, NewOrdersState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('بدء التحميل...')),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: (error) =>
                    Center(child: Text('حدث خطأ: ${error.message}')),
                success: (ordersResponse) {
                  final orders = ordersResponse.orders;
                  if (orders.isEmpty) {
                    return Center(child: Text(AppStrings.noCurrentOrders.tr()));
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index];
                      return InkWell(
                        onTap: () {
                          context.push(RouterNames.newestOrderDetails, extra: {
                            'orderId': order.id,
                          });
                        },
                        child: NewestOrdersCardItem(
                          orderId: order.id,
                          orderName: order.orderType,
                          date: order.deliveryDate ?? 'لا يوجد تاريخ',
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.h);
                    },
                  );
                },
              );
            },
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

    _cubit.newOrders(startDate, endDate); // تطبيق التصفية
  }
}
