abstract class EndpointsStrings {
  static const String baseUrl = 'https://management.mlmcosmo.com/';
  static const String branches = 'api/all-branches';
  static const String specialization = 'api/all-specializations';

  //!manager//
  static const String managerRegister = 'manager/register';
  static const String managerLogin = 'manager/login';
  static const String managerLogout = 'manager/logout';
  static const String managerForgotPassword = 'manager/forgot-password';
  static const String managerChangePassword = 'manager/change-password';
  static const String managerVerifyEmail = 'manager/verify';
  static const String managerVerifyResetCode = 'manager/verify-reset-code';
  static const String managerProfile = 'manager/profile';
  static const String managerResetPassword = 'manager/reset-password';

  static const String managerDeleteProfile = 'manager/delete-account';
  static const String managerNewOrders = 'manager/new-orders';
  static const String managerInProgressOrder = 'manager/inprogress-orders';
  static const String managerStats = 'manager/stats';
  static const String completedOrders = 'manager/completed-orders';
  static const String notAssignedOrders = 'manager/not-assigned-orders';
  static const String assignedOrders = 'manager/assigned-orders';
  static const String deliveredOrders = 'manager/delivered-orders';
  static const String returnedOrders = 'manager/returned-orders';
  static const String withDeliveryOrders = 'manager/orders-with-delivery';
  static const String refusedOrders = 'manager/rejected-orders';
  static const String managerOrderDetails = 'manager/show-order/';
  static const String acceptOrder = 'manager/accept-order/';
  static const String managerChef = 'manager/chefs';
  static const String managerChefDetails = 'manager/chef/';
  static const String managerDelivery = 'manager/deliveries';
  static const String managerDeliveryDetails = 'manager/show-delivery/';
  static const String managerSelectChef = 'manager/assign-to-Chef';
  static const String managerSelectDelivery = 'manager/assign-order-delivery';
  static const String salesSelectDelivery = 'sales/deliveries';

  static const String managerAllEmployee = 'manager/all-requests';
  static const String managerAcceptChef = 'manager/accept-chef/';
  static const String managerRejectChef = 'manager/reject-chef/';
  static const String managerAcceptDelivery = 'manager/accept-delivery/';
  static const String managerRejectDelivery = 'manager/reject-delivery/';

  //!sales//
  static const String salesRegister = 'sales/register';
  static const String salesVerifyEmail = 'sales/verify';
  static const String salesLogin = 'sales/login';
  static const String salesVerifyResetCode = 'sales/verify-reset-code';
  static const String salesResetPassword = 'sales/reset-password';
  static const String salesLogout = 'sales/logout';
  static const String salesForgotPassword = 'sales/forgot-password';
  static const String salesProfile = 'sales/profile';
  static const String salesDeleteProfile = 'sales/delete-account';
  static const String salesBanner = 'sales/banners';
  static const String salesOrdersStatus = 'sales/stats';
  static const String salesChangePassword = 'sales/change-password';

  //!chef//
  static const String chefRegister = 'chef/register';
  static const String chefVerifyEmail = 'chef/verify';

  static const String chefLogin = 'chef/login';
  static const String chefVerifyResetCode = 'chef/verify-reset-code';
  static const String chefResetPassword = 'chef/reset-password';
  static const String chefLogout = 'chef/logout';
  static const String chefForgotPassword = 'chef/forgot-password';
  static const String chefProfile = 'chef/profile';
  static const String chefNotifications = 'chef/notifications';
  static const String chefDeleteProfile = 'chef/delete-account';
  static const String chefNewsOrder = 'chef/new-orders';
  static const String chefPendingOrder = 'chef/pending-orders';
  static const String chefCompletedOrder = 'chef/completed-orders';
  static const String chefAcceptedOrder = 'chef/accepted-orders';
  static const String chefOrderDetails = 'chef/orders/';
  static const String chefAcceptOrder = 'chef/accept-order/';
  static const String chefDeclineOrder = 'chef/decline-order/';
  static const String chefStartOrder = 'chef/order-in-progress/';
  static const String chefDoneOrder = 'chef/order-done/';
  static const String chefChangePassword = 'chef/change-password';
}

class AppConstants {
  static const mapDurationApiKey = "AIzaSyAG_-zCk6oBioWgVoGG-GfHpRt7rG5QP4s";
}
