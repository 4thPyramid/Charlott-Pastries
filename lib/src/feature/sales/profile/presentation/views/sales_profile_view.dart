import 'package:charlot/src/feature/sales/profile/presentation/component/sales_profile_view_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../manager/profile/presentation/logic/profile_cubit.dart';

class SalesProfileView extends StatelessWidget {
  const SalesProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const CustomAppBar(
              title: AppStrings.profile,
            ),
            SizedBox(height: 10.h),
            BlocProvider(
              create: (context) => getIt<ProfileCubit>(),
              child: const SalesProfileViewComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
