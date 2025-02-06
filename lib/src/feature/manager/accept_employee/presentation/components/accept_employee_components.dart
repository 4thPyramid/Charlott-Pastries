import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../auth/presentation/widgets/email_and_phone_tap_bar.dart';
import '../logic/all_employee/all_employee_cubit.dart';
import '../logic/all_employee/all_employee_state.dart';
import '../logic/employee_action/employee_action_cubit.dart';
import '../widgets/accept_employee_card_item.dart';

class AcceptEmployeeComponents extends StatefulWidget {
  const AcceptEmployeeComponents({super.key});

  @override
  State<AcceptEmployeeComponents> createState() =>
      _AcceptEmployeeComponentsState();
}

class _AcceptEmployeeComponentsState extends State<AcceptEmployeeComponents>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AllEmployeeCubit>()..getAllEmployee(),
        ),
        BlocProvider(
          create: (context) => getIt<EmployeeActionCubit>(),
        ),
      ],
      child: BlocBuilder<AllEmployeeCubit, AllEmployeeState>(
        builder: (context, state) {
          return Column(
            children: [
              EmailAndPhoneTapBarWidget(
                tabController: _tabController,
                title1: AppStrings.chefRequest,
                title2: AppStrings.deliveryRequest,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                height: MediaQuery.of(context).size.height * 0.6,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildChefList(state),
                    _buildDeliveryList(state),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildChefList(AllEmployeeState state) {
    if (state is AllEmployeeSuccess) {
      final chefs = state.chefResponse.chef;
      return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: chefs.length,
        itemBuilder: (context, index) {
          return AcceptEmployeeCardItem(
            employee: chefs[index],
            isChef: true, // Specify it's a chef
            onAccept: (id) {
              context.read<EmployeeActionCubit>().acceptChef(id).then((_) {
                setState(() {
                  BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
                });
              });
            },
            onReject: (id) {
              context.read<EmployeeActionCubit>().rejectChef(id).then((_) {
                setState(() {
                  BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
                });
              });
            },
          );
        },
      );
    } else if (state is AllEmployeeLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is AllEmployeeFailure) {
      return Center(child: Text(state.errorMessage.message));
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildDeliveryList(AllEmployeeState state) {
    if (state is AllEmployeeSuccess) {
      final deliveries = state.chefResponse.delivery;
      return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: deliveries.length,
        itemBuilder: (context, index) {
          return AcceptEmployeeCardItem(
            employee: deliveries[index],
            isChef: false,
            onAccept: (id) {
              context.read<EmployeeActionCubit>().acceptDelivery(id).then((_) {
                setState(() {
                  BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
                });
              });
            },
            onReject: (id) {
              context.read<EmployeeActionCubit>().rejectDelivery(id).then((_) {
                setState(() {
                  BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
                });
              });
            },
          );
        },
      );
    } else if (state is AllEmployeeLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is AllEmployeeFailure) {
      return Center(child: Text(state.errorMessage.message));
    } else {
      return const SizedBox.shrink();
    }
  }
}
