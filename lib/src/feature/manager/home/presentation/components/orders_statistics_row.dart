import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../logic/stats/stats_cubit.dart';
import '../logic/stats/stats_state.dart';
import '../widgets/custom_card_statistics.dart';
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
            failure: (error) => Center(child: Text('wrong ${error.message}')),
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
                        width: 100.w,
                        // height: 90.h,
                        number: statsResponse.prepared,
                        name: AppStrings.orderCompleted.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerCompletedOrders);
                        },
                      ),
                      CustomCardStatistics(
                        width: 100.w,
                        number: statsResponse.delivered,
                        name: AppStrings.orderEnded.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerFinishOrders);
                        },
                      ),
                      CustomCardStatistics(
                        width: 100.w,
                        number: statsResponse.returned,
                        name: AppStrings.returnOrder.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerReturnedOrders);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCardStatistics(
                        width: 150.w,
                        number: statsResponse.rejected,
                        name: AppStrings.refusedOrder.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerRefusedOrders);
                        },
                      ),
                      CustomCardStatistics(
                        width: 150.w,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCardStatistics(
                        width: 150.w,
                        number: statsResponse.assignedOrders,
                        name: AppStrings.waitingOrders.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerAssignedOrders);
                        },
                      ),
                      CustomCardStatistics(
                        width: 150.w,
                        number: statsResponse.notAssigned,
                        name: AppStrings.notAssignedOrders.tr(),
                        onPressed: () {
                          context.push(RouterNames.managerNotAssignedOrders);
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
