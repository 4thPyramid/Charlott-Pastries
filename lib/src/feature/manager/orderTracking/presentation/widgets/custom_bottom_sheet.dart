import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_cubit.dart';
import 'package:charlot/src/feature/manager/orderTracking/presentation/cubit/map_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../generated/app_strings.g.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.orderId});
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.estimatedDistanceAndTime.tr(),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.access_time, color: Colors.blue),
              ],
            ),
            SizedBox(height: 10.h),
            BlocBuilder<MapCubit, MapState>(
              builder: (context, state) {
                if (state is MapDistanceLoaded) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${AppStrings.distance.tr()}: ${state.distance}",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        " ${AppStrings.expectedTime.tr()}: ${state.duration}",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                      // OrderActionBottonsWidget(
                      //   orderId: orderId,
                      // ),
                    ],
                  );
                } else if (state is MapError) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
