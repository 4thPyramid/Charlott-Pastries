import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/services/service_locator.dart';
import '../../../logic/employee_cubits.dart';
import '../../../logic/employee_state.dart';
import '../widgets/chef_card_item.dart';

class SelectChefsListView extends StatelessWidget {
  const SelectChefsListView({super.key, required this.orderId});
  final int orderId;
@override
  Widget build(BuildContext context) {
   return BlocProvider(
      create: (BuildContext context) => getIt<EmployeesCubit>()..callChef(),
      child:
     BlocBuilder<EmployeesCubit, EmployeesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('البيانات الأولية')),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (error) => Center(child: Text('حدث خطأ: ${error.message}')),
          success: (employeesResponse) {
            if (employeesResponse.employees.isEmpty) {
              return const Center(child: Text('لا توجد بيانات متاحة'));
            }
            return ListView.builder(
              itemCount: employeesResponse.employees.length,
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final employee = employeesResponse.employees[index];
                return ChefAndDeliveryCard(
                  from: 'chef',
                  employee: employee,
                  orderId : orderId,
                );
              },
            );
          },
        );
      },
     ),
    );
  }
}
