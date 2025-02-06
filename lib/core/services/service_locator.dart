import 'package:charlot/core/app_cubit/app_cubit.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/api/dio_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/src/feature/auth/domain/usecase/login_use_case.dart';
import 'package:charlot/src/feature/location/data/datasource/map_picker_remote_data_source.dart';
import 'package:charlot/src/feature/location/domain/repo/map_picker_repo.dart';
import 'package:charlot/src/feature/location/domain/usecase/get_address_uc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/manager/empolyee/domain/usecase/get_chef_use_case.dart';
import 'package:charlot/src/feature/manager/empolyee/presentation/chef_list/logic/chef_details_cubit.dart';
import 'package:charlot/src/feature/manager/empolyee/presentation/logic/select/select_chef_delivery_cubit.dart';
import 'package:charlot/src/feature/manager/home/data/remote/home_api_services.dart';
import 'package:charlot/src/feature/manager/home/data/remote/home_remote_ds.dart';
import 'package:charlot/src/feature/manager/home/domain/repository/home_repository.dart';
import 'package:charlot/src/feature/manager/home/domain/usecase/get_new_orders_use_case.dart';
import 'package:charlot/src/feature/manager/register/domain/usecase/manager_register_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../../src/feature/auth/data/remote/auth_api_services.dart';
import '../../src/feature/auth/data/remote/auth_remote_ds.dart';
import '../../src/feature/auth/domain/repository/auth_repo.dart';
import '../../src/feature/auth/domain/usecase/verify_email_use_case.dart';
import '../../src/feature/auth/presentation/logic/login/login_cubit.dart';
import '../../src/feature/auth/presentation/logic/verify_email/verify_email_cubit.dart';
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
import '../../src/feature/manager/empolyee/domain/usecase/get_delivery_details_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/get_delivery_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/select_chef_use_case.dart';
import '../../src/feature/manager/empolyee/domain/usecase/select_delivery_use_case.dart';
import '../../src/feature/manager/empolyee/presentation/delivery/logic/delivery_details_cubit.dart';
import '../../src/feature/manager/empolyee/presentation/logic/employee_cubits.dart';
import '../../src/feature/manager/home/domain/usecase/get_in_progress_orders_use_case.dart';
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
getIt.registerLazySingleton<AllEmployeeRemoteDs>(
      () =>AllEmployeeRemoteDsImpl (getIt()));
  ///! -- Repositories -- ///
  getIt.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(getIt()));

  getIt.registerLazySingleton<ManagerRegisterRepo>(
      () => ManagerRegisterRepoImpl(getIt()));
  getIt.registerLazySingleton<SalesRegisterRepo>(
      () => SalesRegisterRepoImpl(getIt()));
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
  getIt.registerLazySingleton<VerifyEmailUseCase>(
      () => VerifyEmailUseCase(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt()),
  );
  getIt.registerLazySingleton<SalesRegisterUseCase>(
    () => SalesRegisterUseCase(getIt()),
  );
  getIt.registerLazySingleton<ChefRegisterUseCase>(
    () => ChefRegisterUseCase(getIt()),
  );

  getIt.registerLazySingleton<GetNewOrdersUseCase>(
    () => GetNewOrdersUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetStatsUseCase>(
    () => GetStatsUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetInProgressOrdersUseCase>(
    () => GetInProgressOrdersUseCase(getIt()),
  );

  getIt.registerLazySingleton<GetCompletedOrderUseCase>(
    () => GetCompletedOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveredOrderUseCase>(
    () => GetDeliveredOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetOrderWithDeliveryUseCase>(
    () => GetOrderWithDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetReturnedOrderUseCase>(
    () => GetReturnedOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetRefusedOrderUseCase>(
    () => GetRefusedOrderUseCase(getIt()),
  );

  getIt.registerLazySingleton<GetOrderDetailsUseCase>(
    () => GetOrderDetailsUseCase(getIt()),
  );
  getIt.registerLazySingleton<AcceptOrderUseCase>(
    () => AcceptOrderUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetChefUseCase>(
    () => GetChefUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveryUseCase>(
    () => GetDeliveryUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetDeliveryDetailsUseCase>(
    () => GetDeliveryDetailsUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetChefDetailsUseCase>(
    () => GetChefDetailsUseCase(getIt()),
  );

   getIt.registerLazySingleton<SelectChefUseCase>(
    () => SelectChefUseCase(getIt()),
  );
   getIt.registerLazySingleton<SelectDeliveryUseCase>(
    () => SelectDeliveryUseCase(getIt()),
  );
   getIt.registerLazySingleton<GetAllEmployeeUseCase>(
    () => GetAllEmployeeUseCase(getIt()),
  );
    getIt.registerLazySingleton<AcceptChefUseCase>(
    () => AcceptChefUseCase(getIt()),
  );
   getIt.registerLazySingleton<AcceptDeliveryUseCase>(
    () => AcceptDeliveryUseCase(getIt()),
  );
   getIt.registerLazySingleton<RejectDeliveryUseCase>(
    () => RejectDeliveryUseCase(getIt()),
  );
   getIt.registerLazySingleton<RejectChefUseCase>(
    () => RejectChefUseCase(getIt()),
  ); 

  getIt.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(getIt()),
  );

  getIt.registerLazySingleton<ChangePasswordUc>(
    () => ChangePasswordUc(getIt()),
  
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

  getIt.registerFactory<SalesRegisterCubit>(() => SalesRegisterCubit(getIt()));
  getIt.registerFactory<ChefRegisterCubit>(() => ChefRegisterCubit(getIt()));

  getIt.registerFactory<VerifyEmailCubit>(() => VerifyEmailCubit(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<NewOrdersCubit>(() => NewOrdersCubit(getIt()));

  getIt.registerFactory<InProgressOrdersCubit>(
      () => InProgressOrdersCubit(getIt()));

  getIt.registerFactory<StatsCubit>(() => StatsCubit(getIt()));

  getIt.registerFactory<CompletedOrdersCubit>(
      () => CompletedOrdersCubit(getIt()));
  getIt.registerFactory<DeliveredOrdersCubit>(
      () => DeliveredOrdersCubit(getIt()));
  getIt
      .registerFactory<ReturnedOrdersCubit>(() => ReturnedOrdersCubit(getIt()));

  getIt.registerFactory<WithDeliveryOrdersCubit>(
      () => WithDeliveryOrdersCubit(getIt()));
  getIt.registerFactory<RefusedOrdersCubit>(() => RefusedOrdersCubit(getIt()));

  getIt.registerFactory<OrderDetailsCubit>(() => OrderDetailsCubit(getIt()));

  getIt.registerFactory<AcceptOrderCubit>(() => AcceptOrderCubit(getIt()));
  getIt.registerFactory<EmployeesCubit>(() => EmployeesCubit(getIt(), getIt()));
  getIt.registerFactory<ChefDetailsCubit>(() => ChefDetailsCubit(getIt()));
  getIt.registerFactory<DeliveryDetailsCubit>(() => DeliveryDetailsCubit(getIt()));
    getIt.registerFactory<SelectChefAndDeliveryCubit>(() => SelectChefAndDeliveryCubit(getIt(), getIt()));

  getIt.registerFactory<AllEmployeeCubit>(() => AllEmployeeCubit(getIt()));
  
  getIt.registerFactory<DeleteAccountCubit>(() => DeleteAccountCubit(getIt(), getIt(), getIt()));

  
    getIt.registerFactory<EmployeeActionCubit>(() => EmployeeActionCubit(getIt(), getIt(),getIt(),getIt()));

}
