import 'package:charlot/src/feature/sales/home/presentation/view/home_view.dart';
import 'package:charlot/src/feature/sales/notification/presentation/view/notification_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/all_orders_view.dart';
import 'package:charlot/src/feature/sales/profile/presentation/views/sales_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_cubit/app_cubit.dart';
import '../../../core/theme/app_colors.dart';

class SalesBottomNavigationBarRoot extends StatelessWidget {
  const SalesBottomNavigationBarRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        final List<Widget> pages = [
          const SalesHomeView(),
          const AllOrdersView(),
          const SalesNotificationView(),
          const SalesProfileView(),
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
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  label: 'add employee',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
