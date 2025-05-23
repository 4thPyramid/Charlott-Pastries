import 'package:charlot/src/feature/manager/orderTracking/presentation/views/order_tracking_view.dart';
import 'package:charlot/src/feature/manager/orders/presentation/logic/completed/completed_order_cubit.dart';
import 'package:charlot/src/feature/manager/search/presentation/cubit/manager_search_cubit.dart';
import 'package:charlot/src/feature/manager/search/presentation/view/manager_search_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/cubit/sales_order_details_cubit.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/view/sales_order_details_view.dart';
import 'package:charlot/src/feature/sales/profile/presentation/views/sales_profile_info.dart';
import 'package:charlot/src/feature/sales/profile/presentation/views/sales_profile_view.dart';
import 'package:charlot/src/feature/sales/profile/presentation/views/sales_setting_view.dart';
import 'package:charlot/src/feature/sales/search/presentation/cubit/sales_search_cubit.dart';
import 'package:charlot/src/feature/sales/search/presentation/view/sales_search_view.dart';
import 'package:charlot/src/feature/sales/updataOrder/presentation/cubit/update_order_cubit.dart';
import 'package:charlot/src/feature/sales/updataOrder/presentation/view/update_order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:charlot/core/common/banner_feature/presentation/logic/cubit/banner_cubit.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/src/feature/auth/presentation/view/forget_password.dart';
import 'package:charlot/src/feature/auth/presentation/view/login_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/reset_password_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/verification_code_password.dart';
import 'package:charlot/src/feature/chef/chef_bottom_navigation_bar_root.dart';
import 'package:charlot/src/feature/chef/home/presentation/view/chef_home_view.dart';
import 'package:charlot/src/feature/chef/notification/presentation/view/notification_view.dart';
import 'package:charlot/src/feature/chef/orders/presentation/view/cheaf_order_datails_view.dart';
import 'package:charlot/src/feature/chef/orders/presentation/view/chef_orders_view.dart';
import 'package:charlot/src/feature/chef/problems/presentation/views/report_poblem_screen.dart';
import 'package:charlot/src/feature/chef/profile/presentation/views/chef_profile_view.dart';
import 'package:charlot/src/feature/chef/regsiter/presentation/view/chef_register_view.dart';
import 'package:charlot/src/feature/intro/presentation/views/user_type_view.dart';

import 'package:charlot/src/feature/auth/presentation/view/otp_view_email.dart';
import 'package:charlot/src/feature/sales/register/presentation/view/sales_register_view.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/location/presentation/views/map_picker_view.dart';
import 'package:charlot/src/feature/manager/empolyee/presentation/delivery/presentation/views/delivery_details_view.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/complete_orders_details.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/manager_compleated_orders.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/manager_finish_orders.dart';
import 'package:charlot/src/feature/manager/register/presentation/view/manager_register_view.dart';
import 'package:charlot/src/feature/orderDetails/presentation/view/order_details_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/add_order_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/client_details_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/price_details_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/logic/cubit/sales_home_cubit.dart';
import 'package:charlot/src/feature/sales/home/presentation/view/home_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/all_orders_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/compleated_orders.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/incompleated_orderes.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/waiting_orders.dart';

import '../../src/feature/auth/presentation/logic/reset_password/reset_password_cubit.dart';
import '../../src/feature/auth/presentation/view/otp_view_for_password.dart';
import '../../src/feature/chef/profile/presentation/views/chef_change_password.dart';
import '../../src/feature/chef/profile/presentation/views/chef_profile_info.dart';
import '../../src/feature/chef/profile/presentation/views/chef_setting_view.dart';
import '../../src/feature/chef/regsiter/presentation/logic/chef_register_cubit.dart';
import '../../src/feature/language/presentation/screen/select_language_view.dart';
import '../../src/feature/manager/empolyee/presentation/chef_list/presentation/view/chef_details_view.dart';
import '../../src/feature/manager/empolyee/presentation/chef_list/presentation/view/select_chefs_view.dart';
import '../../src/feature/manager/empolyee/presentation/delivery/presentation/views/select_delivery_view.dart';
import '../../src/feature/manager/home/presentation/view/manager_hom_view.dart';
import '../../src/feature/manager/manager_bottom_navigation_bar_root.dart';
import '../../src/feature/manager/newest_orders/presentation/views/newest_order_details.dart';
import '../../src/feature/manager/orders/presentation/views/manager_assigned_orders.dart';
import '../../src/feature/manager/orders/presentation/views/manager_being_delivered_orders_view.dart';
import '../../src/feature/manager/orders/presentation/views/manager_not_assign_order.dart';
import '../../src/feature/manager/orders/presentation/views/manager_refused_orders.dart';
import '../../src/feature/manager/orders/presentation/views/manager_returned_and_refused_orders_details.dart';
import '../../src/feature/manager/orders/presentation/views/manager_returned_orders.dart';
import '../../src/feature/manager/profile/presentation/logic/profile_cubit.dart';
import '../../src/feature/manager/profile/presentation/view/change_password_view.dart';
import '../../src/feature/manager/profile/presentation/view/personal_info_view.dart';
import '../../src/feature/manager/profile/presentation/view/settings_view.dart';
import '../../src/feature/manager/register/presentation/logic/manager_register/manager_register_cubit.dart';
import '../../src/feature/sales/addOrder/presentation/delivery_view/views/delivery_details_view.dart';
import '../../src/feature/sales/addOrder/presentation/delivery_view/views/select_delivery_view.dart';
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
      path: RouterNames.selectLanguage,
      builder: (context, state) => const LanguageSelectionPage(),
    ),
    GoRoute(
      path: RouterNames.userTypeView,
      builder: (context, state) => const UserTypeView(),
    ),
    GoRoute(
        path: RouterNames.otpViewForEmail,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;

          return BlocProvider(
              create: (context) => getIt<ResetPasswordCubit>(),
              child: OtpViewForEmail(
                userType: data['userType'] as String,
              ));
        }),
    GoRoute(
        path: RouterNames.otpViewForPassword,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return BlocProvider(
              create: (context) => getIt<ResetPasswordCubit>(),
              child: OtpViewForPassword(
                userType: data['userType'] as String,
              ));
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
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;

          return BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: ForgetPasswordView(
              userType: data['userType'] as String,
            ),
          );
        }),
    GoRoute(
      path: RouterNames.changePasswordView,
      builder: (context, state) => const ChangePasswordView(),
    ),
    GoRoute(
        path: RouterNames.verifyCodeView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return BlocProvider(
              create: (context) => getIt<ResetPasswordCubit>(),
              child: VerificationCodePassword(
                userType: data['userType'] as String,
                identifier: data['identifier'] as String,
              ));
        }),

    GoRoute(
        path: RouterNames.resetPasswordView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: ResetPasswordView(
              userType: data['userType'] as String,
              otp: data['otp'] as String,
              identifier: data['identifier'] as String,
            ),
          );
        }),
    GoRoute(
      path: RouterNames.notification,
      builder: (context, state) => const ChefNotificationView(),
    ),
    GoRoute(
      path: RouterNames.returnAndRefusedOrderDetails,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;

        return ReturnedAndRefusedOrderDetails(
          from: data['from'] as String? ?? '',
          title: data['title'] as String? ?? '',
          orderStatus: data['orderStatus'] as String? ?? '',
          orderId: data['orderId'] as int? ?? 0,
        );
      },
    ),
    GoRoute(
      path: "${RouterNames.mapPicker}/:orderId/:isSameday",
      builder: (context, state) {
        final orderId =
            int.tryParse(state.pathParameters['orderId'] ?? '') ?? 0;
        final isSameday = state.pathParameters['isSameday'] ?? '';
        return BlocProvider(
          create: (context) => getIt<MapPickerCubit>(),
          child: MapPickerView(
            orderId: orderId,
            isSameday: isSameday,
          ),
        );
      },
    ),
    GoRoute(
        path: RouterNames.salesSearchView,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<SalesSearchCubit>(),
              child: const SalesSearchView(),
            )),
    GoRoute(
      path: "${RouterNames.salesOrderDetails}/:orderId",
      builder: (context, state) {
        final orderId =
            int.tryParse(state.pathParameters['orderId'] ?? '') ?? 0;
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<SalesOrderDetailsCubit>()
                ..getOrderDetails(orderId.toString()),
            ),
            BlocProvider(
              create: (context) => getIt<UpdateOrderCubit>(),
            ),
          ],
          child: SalesOrderDetailsView(
            orderId: orderId,
          ),
        );
      },
    ),
    GoRoute(
        path: RouterNames.ordersDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return OrderDetailsView(
            from: data['from'] as String? ?? '',
            title: data['title'] as String? ?? '',
            orderId: data['orderId'] as int? ?? 0,
            deliveryBoyId: data['deliveryBoyId'] as int? ?? 0,
          );
        }),
    GoRoute(
        path: RouterNames.managerBeingDeliveredOrdersView,
        builder: (context, state) => const ManagerBeingDeliveredOrdersView()),

    GoRoute(
      path: RouterNames.updateOrderView,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final orderId = extra['orderId'] as int;
        final orderType = extra['orderType'] as String;
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<UpdateOrderCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<SalesOrderDetailsCubit>(),
            ),
          ],
          child: UpdateOrderView(
            orderId: orderId,
            orderType: orderType,
          ),
        );
      },
    ),

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
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SalesHomeCubit>()..getOrderStats(),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
          ),
        ],
        child: const SalesBottomNavigationBarRoot(),
      ),
    ),
    GoRoute(
      path: RouterNames.salesHome,
      builder: (context, state) => const SalesHomeView(),
    ),

    GoRoute(
      path: RouterNames.addOrder,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AddOrderCubit>(),
          ),
        ],
        child: const AddOrderViewFirst(),
      ),
    ),

    GoRoute(
      path: "${RouterNames.priceDetailsView}/:orderId/:isSameday/:orderType",
      builder: (context, state) {
        final orderId =
            int.tryParse(state.pathParameters['orderId'] ?? '') ?? 0;
        final isSameday = state.pathParameters['isSameday'] ?? '';
        final String orderType = state.pathParameters['orderType'] ?? '';
        return BlocProvider(
          create: (context) => getIt<AddOrderCubit>(),
          child: PriceDetailsView(
            orderType: orderType,
            orderId: orderId,
            isSameday: isSameday,
          ),
        );
      },
    ),

    GoRoute(
      path: RouterNames.addClientDetailsView,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        final long = data["longitude"] as double? ?? 0.0;
        final lat = data["latitude"] as double? ?? 0.0;
        final address = Uri.decodeComponent(data['address'] ?? '');
        final orderId = data['orderId'] ?? 0;
        final isSameday = data['isSameday'] ?? '';
        return BlocProvider(
          create: (context) => getIt<AddOrderCubit>(),
          child: ClientDetailsView(
            long: long,
            lat: lat,
            address: address,
            orderId: orderId,
            isSameday: isSameday,
          ),
        );
      },
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
      path: RouterNames.salesProfileView,
      builder: (context, state) => const SalesProfileView(),
    ),
    GoRoute(
      path: RouterNames.salesProfileInfo,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ProfileCubit>(),
        child: const SalesProfileInfo(),
      ),
    ),
    GoRoute(
        path: RouterNames.salesSettingView,
        builder: (context, state) => const SalesSettingView()),

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
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CompletedOrdersCubit>(),
        child: const ManagerCompletedOrders(),
      ),
    ),
    GoRoute(
      path: RouterNames.managerNotAssignedOrders,
      builder: (context, state) => const ManagerNotAssignOrders(),
    ),
    GoRoute(
      path: RouterNames.managerAssignedOrders,
      builder: (context, state) => const ManagerAssignedOrders(),
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
      path: RouterNames.orderTrackingView,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;

        return OrderTrackingView(
          orderId: data['orderId'] as int? ?? 0,
          deliveryBoyId: data['deliveryBoyId'] as int? ?? 0,
        );
      },
    ),
    GoRoute(
      path: RouterNames.completeOrdersDetails,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        return CompleteOrdersDetails(
          orderTitle: data['orderTitle'] as String? ?? '',
          pageTitle: data['pageTitle'] as String? ?? '',
          orderStatusColor: Color(data['color'] ?? 0xFF00ba69),
          orderId: data['orderId'] as int? ?? 0,
        );
      },
    ),
    GoRoute(
      path: RouterNames.managerFinishOrders,
      builder: (context, state) => const ManagerFinishOrders(),
    ),
    GoRoute(
      path: RouterNames.newestOrderDetails,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;

        return NewestOrderDetails(orderId: data['orderId'] as int? ?? 0);
      },
    ),
    GoRoute(
        path: RouterNames.selectChef,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return SelectChefsView(
            orderId: data['orderId'] as int? ?? 0,
          );
        }),

    GoRoute(
        path: RouterNames.salesSelectDeliveryView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return SalesSelectDeliveryView(
            orderId: data['orderId'] as int? ?? 0,
          );
        }),

    GoRoute(
        path: RouterNames.salesDeliveryDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return SalesDeliveryDetailsView(
            deliveryId: data['deliveryId'] as int? ?? 0,
            orderId: data['orderId'] as int? ?? 0,
          );
        }),

    GoRoute(
        path: RouterNames.chefDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return ChefDetailsView(
            chefId: data['chefId'] as int? ?? 0,
            orderId: data['orderId'] as int? ?? 0,
          );
        }),
    GoRoute(
        path: RouterNames.selectDeliveryBoy,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>? ?? {};
          return SelectDeliveryView(
            orderId: data['orderId'] as int? ?? 0,
          );
        }),
    GoRoute(
        path: RouterNames.deliveryBoyDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return DeliveryDetailsView(
            deliveryId: data['deliveryId'] as int? ?? 0,
            orderId: data['orderId'] as int? ?? 0,
          );
        }),
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
      path: RouterNames.chefHomeView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<BannerCubit>(),
          ),
        ],
        child: const ChefHomeView(),
      ),
    ),
    GoRoute(
      path: RouterNames.chefOrdersView,
      builder: (context, state) => const ChefOrdersView(),
    ),
    GoRoute(
        path: RouterNames.chefOrdersDetailsView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return ChefOrdersDetailsView(
            orderId: data['orderId'] as int? ?? 0,
            title: data['title'] as String? ?? '',
          );
        }),

    GoRoute(
        path: RouterNames.chefRegister,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<ChefRegisterCubit>(),
              child: const ChefRegisterView(),
            )),
    GoRoute(
      path: RouterNames.chefBottomNavigationBarRoot,
      builder: (context, state) => const ChefBottomNavigationBarRoot(),
    ),
    GoRoute(
      path: RouterNames.chefChangePassword,
      builder: (context, state) => const ChefChangePassword(),
    ),
    GoRoute(
      path: RouterNames.reportProblemScreen,
      builder: (context, state) => const ReportProblemScreen(),
    ),
    GoRoute(
      path: RouterNames.chefProfileView,
      builder: (context, state) => const ChefProfileView(),
    ),
    GoRoute(
      path: RouterNames.chefProfileInfo,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ProfileCubit>(),
        child: const ChefProfileInfo(),
      ),
    ),
    GoRoute(
        path: RouterNames.chefSettingView,
        builder: (context, state) => const ChefSettingView()),

    GoRoute(
      path: RouterNames.managerSearch,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ManagerSearchCubit>(),
        child: const ManagerSearchView(),
      ),
    ),
  ],
);
