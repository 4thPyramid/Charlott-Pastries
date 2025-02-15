import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/chef/home/presentation/view/chef_home_view.dart';
import 'package:charlot/src/feature/chef/orders/presentation/view/chef_orders_view.dart';
import 'package:charlot/src/feature/chef/profile/presentation/views/chef_profile_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_cubit/app_cubit.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/app_strings.g.dart';
import '../chef/notification/presentation/view/notification_view.dart';

class ChefBottomNavigationBarRoot extends StatelessWidget {
  const ChefBottomNavigationBarRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        final List<Widget> pages = [
          const ChefHomeView(),
          const ChefOrdersView(),
          const NotificationView(),
          const ChefProfileView(),
        ];
        return Scaffold(
          backgroundColor: AppColors.lightGrey,
          body: SafeArea(
            bottom: false,
            child: pages[state.bottomNavBarSelectedIndex],
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.lightGrey, width: 1.5),
              ),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              type: BottomNavigationBarType.shifting,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.textColor,
              showUnselectedLabels: false,
              backgroundColor: AppColors.openGrey,
              elevation: 2,
              currentIndex: state.bottomNavBarSelectedIndex,
              onTap: (index) => context
                  .read<AppCubit>()
                  .changeBottomNavBarSelectedIndex(index),
              items:  [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined),
                  label: AppStrings.home.tr(),
                ),
                 BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  label: AppStrings.cart.tr(),
                ),
                 BottomNavigationBarItem(
                  icon: const Icon(Icons.notifications_outlined),
                  label: AppStrings.notifications.tr(),
                ),
                 BottomNavigationBarItem(
                  icon: const Icon(Icons.person_outline),
                  label: AppStrings.profile.tr(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
