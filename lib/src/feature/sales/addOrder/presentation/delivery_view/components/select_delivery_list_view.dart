import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/services/service_locator.dart';
import '../../../../../manager/empolyee/presentation/chef_list/presentation/widgets/chef_card_item.dart';
import '../../logic/delivery/delivery_cubit.dart';
import '../../logic/delivery/delivery_state.dart';

class SalesSelectDeriversListView extends StatelessWidget {
  const SalesSelectDeriversListView({super.key, required this.orderId});
final int orderId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<GetDeliveryCubit>()..fetchDelivery(),
      child: BlocBuilder<GetDeliveryCubit, GetDeliveryState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('البيانات الأولية')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) =>
                Center(child: Text('حدث خطأ: ${error.message}')),
            success: (employeesResponse) {
              if (employeesResponse.employees.isEmpty) {
                return const Center(child: Text('لا توجد بيانات متاحة'));
              }

              return ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0.0),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: employeesResponse.employees.length,
                itemBuilder: (context, index) {
                  final employee = employeesResponse.employees[index];
                  return ChefAndDeliveryCard(
                    employee: employee,
                    from: 'sales delivery',
                    orderId: orderId,
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
