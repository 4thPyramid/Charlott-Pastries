import 'package:charlot/core/common/banner_feature/presentation/logic/cubit/banner_cubit.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/chef/chef_bottom_navigation_bar_root.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/presentation/logic/cubit/orders_type_cubit.dart';
import 'package:charlot/src/feature/chef/home/presentation/view/chef_home_view.dart';
import 'package:charlot/src/feature/chef/notification/presentation/view/notification_view.dart';
import 'package:charlot/src/feature/chef/orders/presentation/view/cheaf_order_datails_view.dart';
import 'package:charlot/src/feature/chef/orders/presentation/view/chef_orders_view.dart';
import 'package:charlot/src/feature/chef/problems/presentation/views/report_poblem_screen.dart';
import 'package:charlot/src/feature/chef/profile/presentation/views/chef_profile_view.dart';
import 'package:charlot/src/feature/chef/regsiter/presentation/view/chef_register_view.dart';
import 'package:charlot/src/feature/intro/presentation/views/user_type_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/forget_password.dart';
import 'package:charlot/src/feature/auth/presentation/view/login_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/otp_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/reset_password_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/logic/cubit/home_cubit.dart';
import 'package:charlot/src/feature/sales/register/presentation/view/sales_register_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/verification_code_password.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/views/map_picker_view.dart';
import 'package:charlot/src/feature/manager/delivery/presentation/views/delivery_details_view.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/complete_orders_details.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/manager_compleated_orders.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/manager_finish_orders.dart';
import 'package:charlot/src/feature/manager/register/presentation/view/manager_register_view.dart';
import 'package:charlot/src/feature/orderDetails/presentation/view/order_details_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/add_order_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/client_details_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/price_details_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/view/home_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/all_orders_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/compleated_orders.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/incompleated_orderes.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/waiting_orders.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../src/feature/chef/regsiter/presentation/logic/chef_register_cubit.dart';
import '../../src/feature/manager/chef_list/presentation/view/chef_details_view.dart';
import '../../src/feature/manager/chef_list/presentation/view/select_chefs_view.dart';
import '../../src/feature/manager/delivery/presentation/views/select_delivery_view.dart';
import '../../src/feature/manager/home/presentation/view/manager_hom_view.dart';
import '../../src/feature/manager/manager_bottom_navigation_bar_root.dart';
import '../../src/feature/manager/newest_orders/presentation/views/newest_order_details.dart';
import '../../src/feature/manager/orders/presentation/views/manager_being_delivered_orders_view.dart';
import '../../src/feature/manager/orders/presentation/views/manager_refused_orders.dart';
import '../../src/feature/manager/orders/presentation/views/manager_returned_and_refused_orders_details.dart';
import '../../src/feature/manager/orders/presentation/views/manager_returned_orders.dart';
import '../../src/feature/manager/profile/presentation/logic/profile_cubit.dart';
import '../../src/feature/manager/profile/presentation/view/personal_info_view.dart';
import '../../src/feature/manager/profile/presentation/view/settings_view.dart';
import '../../src/feature/manager/register/presentation/logic/manager_register/manager_register_cubit.dart';
import '../../src/feature/sales/register/presentation/logic/sales_register/sales_register_cubit.dart';
import '../../src/feature/sales/sales_bottom_navigation_bar_root.dart';
import '../../src/feature/splash/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouterNames.splashView,
      builder: (context, state) => const AnimatedSplashScreen(),
    ),
    GoRoute(
      path: RouterNames.userTypeView,
      builder: (context, state) => const UserTypeView(),
    ),
    GoRoute(
        path: RouterNames.otpView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;

          return OtpView(
            userType: data['userType'] as String,
          );
        }),
    GoRoute(
        path: RouterNames.loginView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return LoginView(
            userType: data['userType'] as String,
          );
        }),
    GoRoute(
      path: RouterNames.forgetPasswordView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
        path: RouterNames.verifyCodeView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return VerificationCodePassword(
            userType: data['userType'] as String,
          );
        }),

    GoRoute(
      path: RouterNames.resetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: RouterNames.notification,
      builder: (context, state) => const NotificationView(),
    ),
    GoRoute(
      path: RouterNames.returnAndRefusedOrderDetails,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;

        return ReturnedAndRefusedOrderDetails(
          from: data['from'] as String? ?? '',
          title: data['title'] as String? ?? '',
          orderStatus: data['orderStatus'] as String? ?? '',
        );
      },
    ),
    GoRoute(
      path: RouterNames.mapPicker,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<MapPickerCubit>(),
        child: const MapPickerView(),
      ),
    ),
    GoRoute(
        path: RouterNames.ordersDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return OrderDetailsView(
            from: data['from'] as String? ?? '',
            title: data['title'] as String? ?? '',
            orderStatus: data['orderStatus'] as String? ?? '',
          );
        }),
    GoRoute(
        path: RouterNames.managerBeingDeliveredOrdersView,
        builder: (context, state) => const ManagerBeingDeliveredOrdersView()),

    //! Sales

    //?auth

    GoRoute(
      path: RouterNames.salesRegisterView,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SalesRegisterCubit>(),
        child: const SalesRegisterView(),
      ),
    ),
    GoRoute(
      path: RouterNames.salesBottomNavigationBarRoot,
      builder: (context, state) => const SalesBottomNavigationBarRoot(),
      builder: (context, state) => BlocProvider(
        create: (context) =>getIt<HomeCubit>()..getOrderStats(),
        child: const SalesBottomNavigationBarRoot(),
      ),

    ),
    GoRoute(
      path: RouterNames.salesHome,
      builder: (context, state) => const SalesHomeView(),
    ),

    GoRoute(
      path: RouterNames.addOrder,
      builder: (context, state) => const AddOrderViewFirst(),
    ),

    GoRoute(
      path: RouterNames.priceDetailsView,
      builder: (context, state) => const PriceDetailsView(),
    ),
    GoRoute(
      path: RouterNames.addClientDetailsView,
      builder: (context, state) => const ClientDetailsView(),
    ),
    GoRoute(
      path: RouterNames.allOrdersView,
      builder: (context, state) => const AllOrdersView(),
    ),
    GoRoute(
      path: RouterNames.waitingOrders,
      builder: (context, state) => const WaitingOrders(),
    ),
    GoRoute(
      path: RouterNames.compleatedOrders,
      builder: (context, state) => const CompleatedOrdersSales(),
    ),
    GoRoute(
      path: RouterNames.incompleatedOrders,
      builder: (context, state) => const IncompleatedOrderes(),
    ),
    GoRoute(
      path: RouterNames.addClientDetailsView,
      builder: (context, state) => const ClientDetailsView(),
    ),

    //!manager
    GoRoute(
      path: RouterNames.managerRegister,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ManagerRegisterCubit>(),
        child: const ManagerRegisterView(),
      ),
    ),
    GoRoute(
      path: RouterNames.managerBottomNavigationBarRoot,
      builder: (context, state) => const ManagerBottomNavigationBarRoot(),
    ),
    GoRoute(
      path: RouterNames.managerHomView,
      builder: (context, state) => const ManagerHomView(),
    ),
    GoRoute(
      path: RouterNames.managerCompletedOrders,
      builder: (context, state) => const ManagerCompletedOrders(),
    ),
    GoRoute(
      path: RouterNames.managerReturnedOrders,
      builder: (context, state) => const ManagerReturnedOrders(),
    ),
    GoRoute(
      path: RouterNames.managerRefusedOrders,
      builder: (context, state) => const ManagerRefusedOrders(),
    ),
    GoRoute(
      path: RouterNames.completeOrdersDetails,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        return CompleteOrdersDetails(
          orderTitle: data['orderTitle'] as String? ?? '',
          pageTitle: data['pageTitle'] as String? ?? '',
          orderStatusColor: Color(data['color'] ?? 0xFF00ba69),
        );
      },
    ),
    GoRoute(
      path: RouterNames.managerFinishOrders,
      builder: (context, state) => const ManagerFinishOrders(),
    ),
    GoRoute(
      path: RouterNames.newestOrderDetails,
      builder: (context, state) => const NewestOrderDetails(),
    ),
    GoRoute(
      path: RouterNames.selectChef,
      builder: (context, state) => const SelectChefsView(),
    ),
    GoRoute(
      path: RouterNames.chefDetails,
      builder: (context, state) => const ChefDetailsView(),
    ),
    GoRoute(
      path: RouterNames.selectDeliveryBoy,
      builder: (context, state) => const SelectDeliveryView(),
    ),
    GoRoute(
      path: RouterNames.deliveryBoyDetails,
      builder: (context, state) => const DeliveryDetailsView(),
    ),
    GoRoute(
        path: RouterNames.personalInfoView,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<ProfileCubit>(),
              child: const PersonalInfoView(),
            )),
    GoRoute(
        path: RouterNames.settingView,
        builder: (context, state) => const SettingsView()),
    // GoRoute(
    //     path: RouterNames.favoriteView,
    //     builder: (context, state) => const FavoriteView()),

    //! chef
    GoRoute(
      path: RouterNames.ChefHomeView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<BannerCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<OrdersTypeCubit>()..getNewOrders(),
          ),
        ],
        child: const ChefHomeView(),
      ),
    ),
    GoRoute(
      path: RouterNames.ChefOrdersView,
      builder: (context, state) => const ChefOrdersView(),
    ),
    GoRoute(
      path: RouterNames.ChefOrdersDetailsView,
      builder: (context, state) => const ChefOrdersDetailsView(),
    ),

    //!chef//
    GoRoute(
        path: RouterNames.chefRegister,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<ChefRegisterCubit>(),
              child: const ChefRegisterView(),
            )),
    GoRoute(
      path: RouterNames.ChefBottomNavigationBarRoot,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<OrdersTypeCubit>()..getNewOrders(),
        child: const ChefBottomNavigationBarRoot(),
      ),
    ),
    GoRoute(
      path: RouterNames.ChefOrdersDetailsView,
      builder: (context, state) => const ChefOrdersDetailsView(),
    ),
    GoRoute(
      path: RouterNames.ReportProblemScreen,
      builder: (context, state) => const ReportProblemScreen(),
    ),
    GoRoute(
      path: RouterNames.ChefProfileView,
      builder: (context, state) => const ChefProfileView(),
    )
  ],
);
