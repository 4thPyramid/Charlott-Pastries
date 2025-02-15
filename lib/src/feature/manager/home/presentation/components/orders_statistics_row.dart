import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../logic/stats/stats_cubit.dart';
import '../logic/stats/stats_state.dart';
import '../widgets/progress_circle.dart';

class OrdersStatisticsRow extends StatelessWidget {
  const OrdersStatisticsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StatsCubit>()..call(),
      child: BlocBuilder<StatsCubit, StatsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('بدء التحميل...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) =>
                Center(child: Text('wrong ${error.message}')),
            success: (statsResponse) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ProgressCircle(
                      percentage: statsResponse.percentage,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCardStatistics(
                        number: statsResponse.notAssigned,
                        name: AppStrings.notAssignedOrders.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerNotAssignedOrders);
                        },
                       
                      ),
                      CustomCardStatistics(
                        number: statsResponse.prepared,
                        name: AppStrings.orderCompleted.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerCompletedOrders);
                        },
                      ),
                      CustomCardStatistics(
                        number: statsResponse.delivered,
                        name: AppStrings.orderEnded.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerFinishOrders);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCardStatistics(
                        number: statsResponse.returned,
                        name: AppStrings.returnOrder.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerReturnedOrders);
                        },
                      ),
                       CustomCardStatistics(
                        number: statsResponse.rejected,
                        name: AppStrings.refusedOrder.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerRefusedOrders);
                        },
                      ),
                      CustomCardStatistics(
                        number: statsResponse.recive,
                        name: AppStrings.orderBeingDeliver.tr(),
                        onPressed: () {
                          context.push(
                            RouterNames.managerBeingDeliveredOrdersView,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class CustomCardStatistics extends StatelessWidget {
  const CustomCardStatistics({
    super.key,
    required this.number,
    required this.name,
    this.onPressed,
  });

  final int number;
  final String name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 193, 171, 171).withAlpha(70),
      margin: EdgeInsets.all(10.w),
      elevation: 0,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 24.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(number.toString(),
                  style: AppStyles.s12.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w700)),
              SizedBox(height: 5.h),
              Text(name,
                  style: AppStyles.s10.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
      ),
    );
  }
}
