import 'package:charlot/core/app_cubit/app_cubit.dart';
import 'package:charlot/core/common/banner_feature/data/data_source/banner_api_servcies.dart';
import 'package:charlot/core/common/banner_feature/data/data_source/banner_remote_ds.dart';
import 'package:charlot/core/common/banner_feature/domain/repo/banners_repo.dart';
import 'package:charlot/core/common/banner_feature/domain/use_case/banner_use_case.dart';
import 'package:charlot/core/common/branches_feature/data/data_source/branches_api_services.dart';
import 'package:charlot/core/common/branches_feature/data/data_source/branches_data_source.dart';
import 'package:charlot/core/common/branches_feature/domain/repo/branches_repo.dart';
import 'package:charlot/core/common/branches_feature/domain/usecases/get_branches_uc.dart';
import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_api_sevices.dart';
import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_remote_data_source.dart';
import 'package:charlot/core/common/specialization_feature/domain/usecases/get_specialization_uc.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/api/dio_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/src/feature/auth/domain/usecase/login_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/data/datasource/orders_type_api_sevcies.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/data/datasource/orders_type_remote_data_source.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/domain/repo/orders_type_repo.dart';
import 'package:charlot/src/feature/chef/orders/data/remote/order_status_api_services.dart';
import 'package:charlot/src/feature/chef/orders/data/remote/order_status_remote_ds.dart';
import 'package:charlot/src/feature/chef/orders/domain/repo/order_status_repository.dart';
import 'package:charlot/src/feature/chef/orders/presentation/logic/order_status_cubit.dart';
import 'package:charlot/src/feature/location/data/datasource/map_picker_remote_data_source.dart';
import 'package:charlot/src/feature/location/domain/repo/map_picker_repo.dart';
import 'package:charlot/src/feature/location/domain/usecase/get_address_uc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/manager/home/data/remote/home_api_services.dart';
import 'package:charlot/src/feature/manager/home/data/remote/home_remote_ds.dart';
import 'package:charlot/src/feature/manager/home/domain/repository/home_repository.dart';
import 'package:charlot/src/feature/manager/register/domain/usecase/manager_register_usecase.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_api_service.dart';
import 'package:charlot/src/feature/sales/addOrder/data/datasourc/add_order_remote_data_source.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_client_data_uc.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_order_details_uc.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_order_price_uc.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/cubit/add_order_cubit.dart';
import 'package:charlot/src/feature/sales/home/data/datasource/home_api_service.dart';
import 'package:charlot/src/feature/sales/home/data/datasource/home_remote_d_s.dart';
import 'package:charlot/src/feature/sales/home/domain/repos/home_repos.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_order_stats_u_c.dart';
import 'package:charlot/src/feature/sales/home/presentation/logic/cubit/sales_home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../../src/feature/auth/data/remote/auth_api_services.dart';
import '../../src/feature/auth/data/remote/auth_remote_ds.dart';
import '../../src/feature/auth/domain/repository/auth_repo.dart';
import '../../src/feature/auth/domain/usecase/forget_password_use_case.dart';
import '../../src/feature/auth/domain/usecase/reset_password_use_case.dart';
import '../../src/feature/auth/domain/usecase/verify_email_use_case.dart';
import '../../src/feature/auth/domain/usecase/verify_reset_code_use_case.dart';
import '../../src/feature/auth/presentation/logic/login/login_cubit.dart';
import '../../src/feature/auth/presentation/logic/reset_password/reset_password_cubit.dart';
import '../../src/feature/auth/presentation/logic/verify_email/verify_email_cubit.dart';
import '../../src/feature/chef/chef_orders_status/domain/use_cases/accepted_orders_use_caes.dart';
import '../../src/feature/chef/chef_orders_status/domain/use_cases/completed_orders_use_case.dart';
import '../../src/feature/chef/chef_orders_status/domain/use_cases/get_chef_details_use_case.dart';
import '../../src/feature/chef/chef_orders_status/domain/use_cases/new_orders_use_case.dart';
import '../../src/feature/chef/chef_orders_status/domain/use_cases/pinding_orders_use_case.dart';
import '../../src/feature/chef/chef_orders_status/presentation/logic/chef_order_details/chef_order_details_cubit.dart';
import '../../src/feature/chef/chef_orders_status/presentation/logic/new_order/new_orders_cubit.dart';
import '../../src/feature/chef/chef_orders_status/presentation/logic/orders_type/order_types_cubit.dart';
import '../../src/feature/chef/notification/data/remote/chef_notification_api_services.dart';
import '../../src/feature/chef/notification/data/remote/chef_notification_remote_ds.dart';
import '../../src/feature/chef/notification/domain/repo/chef_notification_repo.dart';
import '../../src/feature/chef/notification/domain/usecase/get_notification_use_case.dart';
import '../../src/feature/chef/notification/presentation/logic/chef_notification_cubit.dart';
import '../../src/feature/chef/orders/domain/usecase/accept_order_use_case.dart';
import '../../src/feature/chef/orders/domain/usecase/decline_order_use_case.dart';
import '../../src/feature/chef/orders/domain/usecase/done_order_use_case.dart';
import '../../src/feature/chef/orders/domain/usecase/start_order_use_case.dart';
import '../../src/feature/chef/regsiter/data/remote/chef_register_api_services.dart';
import '../../src/feature/chef/regsiter/data/remote/chef_register_remote_ds.dart';
import '../../src/feature/chef/regsiter/domain/repository/chef_register_repo.dart';
import '../../src/feature/chef/regsiter/domain/usecase/chef_register_usecase.dart';
import '../../src/feature/chef/regsiter/presentation/logic/chef_register_cubit.dart';
import '../../src/feature/manager/accept_employee/data/remote/all_employee_api_services.dart';
import '../../src/feature/manager/accept_employee/data/remote/all_employee_remote_ds.dart';
import '../../src/feature/manager/accept_employee/domain/repo/all_employee_repository.dart';
import '../../src/feature/manager/accept_employee/domain/usecase/accept_chef_use_case.dart';
import '../../src/feature/manager/accept_employee/domain/usecase/accept_delivery_use_case.dart';
import '../../src/feature/manager/accept_employee/domain/usecase/get_all_employee_use_case.dart';
import '../../src/feature/manager/accept_employee/domain/usecase/reject_chef_use_case.dart';
import '../../src/feature/manager/accept_employee/domain/usecase/reject_delivery_use_case.dart';
import '../../src/feature/manager/accept_employee/presentation/logic/all_employee/all_employee_cubit.dart';
import '../../src/feature/manager/accept_employee/presentation/logic/employee_action/employee_action_cubit.dart';
import '../../src/feature/manager/empolyee/data/remote/employee_remote_ds.dart';
import '../../src/feature/manager/empolyee/data/remote/get_employee_api_services.dart';
import '../../src/feature/manager/empolyee/domain/repo/employee_repository.dart';
import '../../src/feature/manager/empolyee/domain/usecase/get_chef_details_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/get_chef_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/get_delivery_details_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/get_delivery_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/select_chef_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/select_delivery_use_case.dart';
import '../../src/feature/manager/empolyee/presentation/chef_list/logic/chef_details_cubit.dart';
import '../../src/feature/manager/empolyee/presentation/delivery/logic/delivery_details_cubit.dart';
import '../../src/feature/manager/empolyee/presentation/logic/employee_cubits.dart';
import '../../src/feature/manager/empolyee/presentation/logic/select/select_chef_delivery_cubit.dart';
import '../../src/feature/manager/home/domain/usecase/get_in_progress_orders_use_case.dart';
import '../../src/feature/manager/home/domain/usecase/get_new_orders_use_case.dart';
import '../../src/feature/manager/home/domain/usecase/get_stats_use_case.dart';
import '../../src/feature/manager/home/presentation/logic/in_progress_orders/in_progress_orders_cubit.dart';
import '../../src/feature/manager/home/presentation/logic/new_orders/new_orders_cubit.dart';
import '../../src/feature/manager/home/presentation/logic/stats/stats_cubit.dart';
import '../../src/feature/manager/orders/data/remote/orders_api_services.dart';
import '../../src/feature/manager/orders/data/remote/orders_remote_ds.dart';
import '../../src/feature/manager/orders/domain/repo/orders_repo.dart';
import '../../src/feature/manager/orders/domain/usecase/get_completed_order_use_case.dart';
import '../../src/feature/manager/orders/domain/usecase/get_delivered_order_use_case.dart';
import '../../src/feature/manager/orders/domain/usecase/get_order_with_delivery_use_case.dart';
import '../../src/feature/manager/orders/domain/usecase/get_refused_order_use_case.dart';
import '../../src/feature/manager/orders/domain/usecase/get_returned_order_use_case.dart';
import '../../src/feature/manager/orders/presentation/logic/completed/completed_order_cubit.dart';
import '../../src/feature/manager/orders/presentation/logic/delivered/delivered_order_cubit.dart';
import '../../src/feature/manager/orders/presentation/logic/refused/refused_order_cubit.dart';
import '../../src/feature/manager/orders/presentation/logic/returned/returned_order_cubit.dart';
import '../../src/feature/manager/orders/presentation/logic/with_delivery/with_delivery_order_cubit.dart';
import '../../src/feature/manager/profile/data/datasource/profile_api_service.dart';
import '../../src/feature/manager/profile/data/datasource/profile_remote_ds.dart';
import '../../src/feature/manager/profile/domain/repository/profile_repository.dart';
import '../../src/feature/manager/profile/domain/usecase/change_password_uc.dart';
import '../../src/feature/manager/profile/domain/usecase/delete_account_uc.dart';
import '../../src/feature/manager/profile/domain/usecase/get_profile_photo_uc.dart';
import '../../src/feature/manager/profile/domain/usecase/logout_use_case.dart';
import '../../src/feature/manager/profile/domain/usecase/update_profile_photo.dart';
import '../../src/feature/manager/profile/domain/usecase/update_profile_uc.dart';
import '../../src/feature/manager/profile/presentation/logic/delete_account_cubit.dart';
import '../../src/feature/manager/profile/presentation/logic/profile_cubit.dart';
import '../../src/feature/manager/register/data/remote/manager_register_api_serivces.dart';
import '../../src/feature/manager/register/data/remote/manager_register_remote_ds.dart';
import '../../src/feature/manager/register/domain/repository/manager_register_repo.dart';
import '../../src/feature/manager/register/presentation/logic/manager_register/manager_register_cubit.dart';
import '../../src/feature/orderDetails/data/remote/order_details_api_service.dart';
import '../../src/feature/orderDetails/data/remote/order_details_remote_ds.dart';
import '../../src/feature/orderDetails/domain/repo/order_details_repo.dart';
import '../../src/feature/orderDetails/domain/usecase/accept_order_use_case.dart';
import '../../src/feature/orderDetails/domain/usecase/get_order_details_use_case.dart';
import '../../src/feature/orderDetails/presentation/logic/accept_order/accept_order_cubit.dart';
import '../../src/feature/orderDetails/presentation/logic/order_details_cubit.dart';
import '../../src/feature/sales/register/data/remote/sales_register_api_serivces.dart';
import '../../src/feature/sales/register/data/remote/sales_register_remote_ds.dart';
import '../../src/feature/sales/register/domain/repository/sales_register_repo.dart';
import '../../src/feature/sales/register/domain/usecase/sales_register_usecase.dart';
import '../../src/feature/sales/register/presentation/logic/sales_register/sales_register_cubit.dart';
import '../common/banner_feature/presentation/logic/cubit/banner_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  ///! FOR APP CUBIT ///
  getIt.registerFactory<AppCubit>(() => AppCubit());

  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt
      .registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: getIt<Dio>()));
  getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());

//!Api Services //
  getIt.registerLazySingleton<ProfileApiService>(
      () => ProfileApiServiceImpl(getIt()));

  getIt.registerLazySingleton<ManagerRegisterApiServices>(
      () => ManagerRegisterApiServicesImpl(getIt()));
  getIt.registerLazySingleton<SalesRegisterApiServices>(
      () => SalesRegisterApiServicesImpl(getIt()));

  getIt.registerLazySingleton<BranchesApiServices>(
    () => BranchesApiServicesImp(getIt()),
  );
  getIt.registerLazySingleton<SpecializationApiSevices>(
    () => SpecializationApiSevicesImp(getIt()),
  );

  getIt.registerLazySingleton<BannerApiServices>(
    () => BannerApiServicesImp(getIt()),
  );
  getIt.registerLazySingleton<ChefRegisterApiServices>(
      () => ChefRegisterApiServicesImpl(getIt()));

  getIt.registerLazySingleton<AuthApiServices>(
      () => AuthApiServicesImpl(getIt()));
  getIt.registerLazySingleton<HomeApiServices>(
      () => HomeApiServicesImpl(getIt()));

  getIt.registerLazySingleton<OrdersApiServices>(
      () => OrdersApiServicesImpl(getIt()));
  getIt.registerLazySingleton<OrderDetailsApiService>(
      () => OrderDetailsApiServiceImpl(getIt()));
  getIt.registerLazySingleton<EmployeeApiServices>(
      () => EmployeeApiServicesImpl(getIt()));
  getIt.registerLazySingleton<AllEmployeeApiServices>(
      () => AllEmployeeApiServicesImpl(getIt()));

  getIt.registerLazySingleton<OrdersTypeApiService>(
      () => OrdersTypeApiServiceImpl(getIt()));

  getIt.registerLazySingleton<OrderStatusApiService>(
      () => OrderStatusApiServiceImpl(getIt()));
  getIt.registerLazySingleton<ChefNotificationApiServices>(
      () => ChefNotificationApiServicesImpl(getIt()));

  getIt.registerLazySingleton<OrdersTypeApiSevcies>(
      () => OrdersTypeApiSevciesImp(getIt()));

  getIt.registerLazySingleton<SalesHomeApiService>(
      () => SalesHomeApiServiceImpl(getIt()));

  ///! --DataSources-- ///
  getIt.registerLazySingleton<ProfileRemoteDs>(
      () => ProfileRemoteDSImpl(getIt()));
  getIt.registerLazySingleton<MapPickerRemoteDataSource>(
    () => MapPickerRemoteDataSourceImpl(),
  );
  getIt.registerLazySingleton<ManagerRegisterRemoteDs>(
      () => ManagerRegisterRemoteDsImpl(getIt()));
  getIt.registerLazySingleton<SalesRegisterRemoteDs>(
      () => SalesRegisterRemoteDsImpl(getIt()));

  getIt.registerLazySingleton<BranchRemoteDataSource>(
    () => BranchesDataSourceImp(getIt()),
  );
  getIt.registerLazySingleton<SpecializationRemoteDataSource>(
    () => SpecializationRemoteDataSourceImp(getIt()),
  );
  getIt.registerLazySingleton<BannerRemoteDs>(
    () => BannerRemoteDsImp(getIt()),
  );

  getIt.registerLazySingleton<ChefRegisterRemoteDs>(
      () => ChefRegisterRemoteDsImpl(getIt()));

  getIt.registerLazySingleton<AuthRemoteDs>(() => AuthRemoteDsImpl(getIt()));
  getIt.registerLazySingleton<HomeRemoteDs>(() => HomeRemoteDsImpl(getIt()));
  getIt
      .registerLazySingleton<OrdersRemoteDs>(() => OrdersRemoteDsImpl(getIt()));
  getIt.registerLazySingleton<OrderDetailsRemoteDs>(
      () => OrderDetailsRemoteDsImpl(getIt()));
  getIt.registerLazySingleton<EmployeeRemoteDs>(
      () => EmployeeRemoteDsImpl(getIt()));

  getIt.registerLazySingleton<OrdersTypeRemoteDataSource>(
      () => OrdersTypeRemoteDataSourceImp(getIt()));
  getIt.registerLazySingleton<AllEmployeeRemoteDs>(
      () => AllEmployeeRemoteDsImpl(getIt()));

  getIt.registerLazySingleton<OrderStatusRemoteDs>(
      () => OrderStatusRemoteDsImpl(getIt()));
  getIt.registerLazySingleton<ChefNotificationRemoteDs>(
      () => ChefNotificationRemoteDsImpl(getIt()));

  getIt.registerLazySingleton<SalesHomeRemoteDS>(
      () => SalesHomeRemoteDS(getIt()));

  getIt.registerLazySingleton<AddOrderRemoteDataSource>(
      () => AddOrderRemoteDataSourceImpl(getIt()));

  ///! -- Repositories -- ///
  getIt.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(getIt()));

  getIt.registerLazySingleton<ManagerRegisterRepo>(
      () => ManagerRegisterRepoImpl(getIt()));
  getIt.registerLazySingleton<SalesRegisterRepo>(
      () => SalesRegisterRepoImpl(getIt()));
  getIt.registerLazySingleton<BranchesRepo>(
    () => BranchesRepoImp(getIt()),
  );
  getIt.registerLazySingleton<BannersRepo>(
    () => BannersRepoImp(getIt()),
  );

  getIt.registerLazySingleton<ChefRegisterRepo>(
      () => ChefRegisterRepoImpl(getIt()));

  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  getIt
      .registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(getIt()));

  getIt.registerLazySingleton<OrderRepository>(
      () => OrderRepositoryImpl(getIt()));
  getIt.registerLazySingleton<OrderDetailsRepository>(
      () => OrderDetailsRepositoryImpl(getIt()));
  getIt.registerLazySingleton<EmployeeRepository>(
      () => EmployeeRepositoryImpl(getIt()));
  getIt.registerLazySingleton<AllEmployeeRepository>(
      () => AllEmployeeRepositoryImpl(getIt()));
  getIt.registerLazySingleton<OrdersTypeRepo>(() => OrdersTypeRepoImp(getIt()));
  getIt.registerLazySingleton<OrderStatusRepository>(
      () => OrderStatusRepositoryImpl(getIt()));
  getIt.registerLazySingleton<ChefNotificationRepo>(
      () => ChefNotificationRepoImpl(getIt()));

  // getIt.registerLazySingleton<OrdersTypeRepo>(
  //   () => OrdersTypeRepoImp(getIt()),
  // );
  getIt.registerLazySingleton<SalesHomeRepo>(
    () => SalesHomeRepoImpl(getIt()),
  );

  ///! -- UseCases -- ///

  getIt.registerLazySingleton<GetProfileDataUC>(
    () => GetProfileDataUC(getIt()),
  );
  getIt.registerLazySingleton<DeleteAccountUC>(
    () => DeleteAccountUC(getIt()),
  );
  getIt.registerLazySingleton<UpdateProfileUc>(
    () => UpdateProfileUc(getIt()),
  );
  getIt.registerLazySingleton<UpdateProfilePhoto>(
      () => UpdateProfilePhoto(getIt()));
  getIt.registerLazySingleton(() => GetAddressFromLatLng(getIt()));

  getIt.registerLazySingleton<ManagerRegisterUseCase>(
      () => ManagerRegisterUseCase(getIt()));

  getIt.registerLazySingleton<GetBranchesUc>(
    () => GetBranchesUc(getIt()),
  );
  getIt.registerLazySingleton<GetSpecializationUc>(
    () => GetSpecializationUc(getIt()),
  );

  getIt.registerLazySingleton<SalesRegisterUseCase>(
    () => SalesRegisterUseCase(getIt()),
  );
  getIt.registerLazySingleton<BannerUseCase>(() => BannerUseCase(getIt()));

  getIt.registerLazySingleton<VerifyEmailUseCase>(
      () => VerifyEmailUseCase(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt()),
  );

  getIt.registerLazySingleton<NewOrdersUseCase>(
    () => NewOrdersUseCase(getIt()),
  );

  getIt.registerLazySingleton<GetAcceptedOrdersUseCase>(
    () => GetAcceptedOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<ChefRegisterUseCase>(
    () => ChefRegisterUseCase(getIt()),
  );
  getIt.registerLazySingleton<CompletedOrdersUseCase>(
    () => CompletedOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<PendingOrdersUseCase>(
    () => PendingOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetChefOrderDetailsUseCase>(
    () => GetChefOrderDetailsUseCase(getIt()),
  );
  getIt.registerLazySingleton<ChefAcceptOrderUseCase>(
    () => ChefAcceptOrderUseCase(getIt()),
  );

  getIt.registerLazySingleton<DoneOrderUseCase>(
    () => DoneOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<StartOrderUseCase>(
    () => StartOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(getIt()),
  );
  getIt.registerLazySingleton<ChangePasswordUc>(
    () => ChangePasswordUc(getIt()),
  );

  getIt.registerLazySingleton<GetNotificationUseCase>(
    () => GetNotificationUseCase(getIt()),
  );

  getIt.registerLazySingleton<ForgetPasswordUseCase>(
    () => ForgetPasswordUseCase(getIt()),
  );
  getIt.registerLazySingleton<VerifyResetCodeUseCase>(
    () => VerifyResetCodeUseCase(getIt()),
  );
  getIt.registerLazySingleton<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetInProgressOrdersUseCase>(
    () => GetInProgressOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetStatsUseCase>(
    () => GetStatsUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetNewOrdersUseCase>(
    () => GetNewOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetOrderDetailsUseCase>(
    () => GetOrderDetailsUseCase(getIt()),
  );
  getIt.registerLazySingleton<ManagerAcceptOrderUseCase>(
    () => ManagerAcceptOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetCompletedOrderUseCase>(
    () => GetCompletedOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveredOrderUseCase>(
    () => GetDeliveredOrderUseCase(getIt()),
  );

  getIt.registerLazySingleton<GetReturnedOrderUseCase>(
    () => GetReturnedOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetRefusedOrderUseCase>(
    () => GetRefusedOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetOrderWithDeliveryUseCase>(
    () => GetOrderWithDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<AcceptChefUseCase>(
    () => AcceptChefUseCase(getIt()),
  );
  getIt.registerLazySingleton<AcceptDeliveryUseCase>(
    () => AcceptDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<RejectChefUseCase>(
    () => RejectChefUseCase(getIt()),
  );
  getIt.registerLazySingleton<RejectDeliveryUseCase>(
    () => RejectDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetChefUseCase>(
    () => GetChefUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveryUseCase>(
    () => GetDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetAllEmployeeUseCase>(
    () => GetAllEmployeeUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveryDetailsUseCase>(
    () => GetDeliveryDetailsUseCase(getIt()),
  );
  getIt.registerLazySingleton<SelectChefUseCase>(
    () => SelectChefUseCase(getIt()),
  );
  getIt.registerLazySingleton<SelectDeliveryUseCase>(
    () => SelectDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetChefDetailsUseCase>(
    () => GetChefDetailsUseCase(getIt()),
  );

// getIt.registerLazySingleton<SalesRegisterUseCase>(
//     () => SalesRegisterUseCase(getIt()),
//   );
  // getIt.registerLazySingleton<ChefRegisterUseCase>(
  //   () => ChefRegisterUseCase(getIt()),
  // );

  getIt.registerLazySingleton<GetOrderStatsUC>(
    () => GetOrderStatsUC(getIt()),
  );
  getIt.registerLazySingleton<AddClientDataUc>(
    () => AddClientDataUc(getIt()),
  );
  getIt.registerLazySingleton<AddOrderDetailsUC>(
    () => AddOrderDetailsUC(getIt()),
  );
  getIt.registerLazySingleton<AddOrderPriceUC>(
    () => AddOrderPriceUC(getIt()),
  );

  //! Cubits //
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(
        getIt(),
        getIt(),
        getIt(),
      ));

  getIt.registerFactory<MapPickerRepository>(
    () => MapPickerRepositoryImpl(getIt<MapPickerRemoteDataSource>()),
  );

  getIt.registerFactory(
      () => MapPickerCubit(apiKey: 'AIzaSyAvRUO9js6cWK6PC42iKxLr7X0T0wVyOBE'));

  getIt.registerFactory<ManagerRegisterCubit>(
      () => ManagerRegisterCubit(getIt()));
  getIt.registerFactory<SelectChefAndDeliveryCubit>(
      () => SelectChefAndDeliveryCubit(getIt(), getIt()));
  getIt.registerFactory<AcceptOrderCubit>(() => AcceptOrderCubit(getIt()));
  getIt.registerFactory<EmployeesCubit>(() => EmployeesCubit(getIt(), getIt()));
  getIt.registerFactory<WithDeliveryOrdersCubit>(
      () => WithDeliveryOrdersCubit(getIt()));
  getIt.registerFactory<DeliveryDetailsCubit>(
      () => DeliveryDetailsCubit(getIt()));
  getIt
      .registerFactory<ReturnedOrdersCubit>(() => ReturnedOrdersCubit(getIt()));
  getIt.registerFactory<RefusedOrdersCubit>(() => RefusedOrdersCubit(getIt()));
  getIt.registerFactory<AllEmployeeCubit>(() => AllEmployeeCubit(getIt()));
  getIt.registerFactory<ChefDetailsCubit>(() => ChefDetailsCubit(getIt()));
  getIt.registerFactory<EmployeeActionCubit>(
      () => EmployeeActionCubit(getIt(), getIt(), getIt(), getIt()));

  getIt.registerFactory<ChefRegisterCubit>(() => ChefRegisterCubit(getIt()));

  getIt.registerFactory<SalesRegisterCubit>(() => SalesRegisterCubit(getIt()));

  getIt.registerFactory<VerifyEmailCubit>(() => VerifyEmailCubit(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerFactory<BannerCubit>(() => BannerCubit(getIt()));

  getIt.registerFactory<NewOrdersCubit>(() => NewOrdersCubit(getIt()));
  getIt.registerFactory<ManagerNewOrdersCubit>(
      () => ManagerNewOrdersCubit(getIt()));
  getIt.registerFactory<CompletedOrdersCubit>(
      () => CompletedOrdersCubit(getIt()));
  getIt.registerFactory<ChefAcceptedOrdersCubit>(
      () => ChefAcceptedOrdersCubit(getIt()));
  getIt.registerFactory<PendingOrdersCubit>(() => PendingOrdersCubit(getIt()));
  getIt.registerFactory<ChefCompletedOrdersCubit>(
      () => ChefCompletedOrdersCubit(getIt()));
  getIt.registerFactory<OrderDetailsCubit>(() => OrderDetailsCubit(getIt()));
  getIt.registerFactory<ChefOrderDetailsCubit>(
      () => ChefOrderDetailsCubit(getIt()));
  getIt.registerFactory<InProgressOrdersCubit>(
      () => InProgressOrdersCubit(getIt()));
  getIt.registerFactory<StatsCubit>(() => StatsCubit(getIt()));
  getIt.registerFactory<DeliveredOrdersCubit>(
      () => DeliveredOrdersCubit(getIt()));

  getIt.registerFactory<DeleteAccountCubit>(
      () => DeleteAccountCubit(getIt(), getIt(), getIt()));

  getIt.registerFactory<OrderStatusCubit>(() => OrderStatusCubit(
        getIt(),
        getIt(),
        getIt(),
        //  getIt(),
      ));
  getIt.registerFactory<ChefNotificationCubit>(
      () => ChefNotificationCubit(getIt()));
  getIt.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(getIt(), getIt(), getIt()));
  getIt.registerFactory<ChefRegisterCubit>(() => ChefRegisterCubit(getIt()));

  getIt.registerFactory<VerifyEmailCubit>(() => VerifyEmailCubit(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerFactory<SalesHomeCubit>(() => SalesHomeCubit(getIt()));

  getIt.registerFactory<AddOrderCubit>(() => AddOrderCubit(
        getIt(),
        getIt(),
        getIt(),
      ));
}
