import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/intro/presentation/views/user_type_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/forget_password.dart';
import 'package:charlot/src/feature/auth/presentation/view/login_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/otp_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/reset_password_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/sales_register_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/verification_code_password.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/complete_orders_details.dart';
import 'package:charlot/src/feature/manager/orders/presentation/views/manager_compleated_orders.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/add_order_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/view/home_view.dart';
import 'package:charlot/src/feature/sales/orders/presentation/views/new_orders.dart';
import 'package:go_router/go_router.dart';

import '../../src/feature/manager/home/presentation/view/manager_hom_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouterNames.userTypeView,
      builder: (context, state) => const UserTypeView(),
    ),
    GoRoute(
      path: RouterNames.otpView,
      builder: (context, state) => OtpView(),
    ),
    GoRoute(
      path: RouterNames.loginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: RouterNames.forgetPasswordView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: RouterNames.verifyCodeView,
      builder: (context, state) => VerificationCodePassword(),
    ),
    GoRoute(
      path: RouterNames.resetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),

    //! Sales
    //?auth
    GoRoute(
      path: RouterNames.salesRegisterView,
      builder: (context, state) => const SalesRegisterView(),
    ),
    GoRoute(
      path: RouterNames.salesHome,
      builder: (context, state) => const SalesHomeView(),
    ),

    GoRoute(
      path: RouterNames.addOrder,
      builder: (context, state) => const AddOrderView(),
    ),
    GoRoute(
      path: RouterNames.newOrders,
      builder: (context, state) => const NewOrdersView(),
    ),

    //!manager

    GoRoute(
      path: RouterNames.managerHomView,
      builder: (context, state) => const ManagerHomView(),
    ),
    GoRoute(
      path: RouterNames.managerCompleatedOrders,
      builder: (context, state) => const ManagerCompleatedOrders(),
    ),
    GoRoute(
      path: RouterNames.completeOrdersDetails,
      builder: (context, state) => const CompleteOrdersDetails(),
    ),
  ],
);
