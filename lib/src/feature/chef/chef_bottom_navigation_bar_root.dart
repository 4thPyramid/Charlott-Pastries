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

class ChefBottomNavigationBarRoot extends StatefulWidget {
  const ChefBottomNavigationBarRoot({super.key});

  @override
  State<ChefBottomNavigationBarRoot> createState() =>
      _ChefBottomNavigationBarRootState();
}

class _ChefBottomNavigationBarRootState
    extends State<ChefBottomNavigationBarRoot> {
  Future<bool> _onWillPop() async {
    final AppCubit cubit = context.read<AppCubit>();
    if (cubit.state.bottomNavBarSelectedIndex != 0) {
      cubit.changeBottomNavBarSelectedIndex(0);
      return false; // Don't exit the app
    } else {
      return await _showExitConfirmationDialog();
    }
  }

  Future<bool> _showExitConfirmationDialog() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppStrings.exitApp.tr()),
        content: Text(
          AppStrings.exitAppConfirmation.tr(),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(AppStrings.cancel.tr()),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(AppStrings.exit.tr()),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => _onWillPop(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          final List<Widget> pages = [
            const ChefHomeView(),
            const ChefOrdersView(),
            const ChefNotificationView(),
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
                items: [
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
      ),
    );
  }
}
