import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/intro/presentation/views/user_type_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/forget_password.dart';
import 'package:charlot/src/feature/auth/presentation/view/login_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/otp_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/reset_password_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/sales_register_view.dart';
import 'package:charlot/src/feature/auth/presentation/view/verification_code_password.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/view/add_order_view.dart';
import 'package:charlot/src/feature/sales/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

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
      path: RouterNames.home,
      builder: (context, state) => const HomeView(),
    ),

    GoRoute(
      path: RouterNames.addOrder,
      builder: (context, state) => const AddOrderView(),
    ),

    //!manager
  ],
);
