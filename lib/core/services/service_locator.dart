import 'package:charlot/core/app_cubit/app_cubit.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/api/dio_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/src/feature/auth/domain/usecase/login_use_case.dart';
import 'package:charlot/src/feature/location/data/datasource/map_picker_remote_data_source.dart';
import 'package:charlot/src/feature/location/domain/repo/map_picker_repo.dart';
import 'package:charlot/src/feature/location/domain/usecase/get_address_uc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
import 'package:charlot/src/feature/manager/register/domain/usecase/manager_register_usecase.dart';
import 'package:charlot/src/feature/sales/home/data/home_api_service.dart';
import 'package:charlot/src/feature/sales/home/data/remote_d_s.dart';
import 'package:charlot/src/feature/sales/home/data/repps_impl/repos_impl.dart';
import 'package:charlot/src/feature/sales/home/domain/repos/home_repos.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_order_stats_u_c.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_profile_u_s.dart';
import 'package:charlot/src/feature/sales/home/presentation/logic/cubit/home_cubit.dart';
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
import '../../src/feature/manager/profile/data/datasource/profile_api_service.dart';
import '../../src/feature/manager/profile/data/datasource/profile_remote_ds.dart';
import '../../src/feature/manager/profile/domain/repository/profile_repository.dart';
import '../../src/feature/manager/profile/domain/usecase/delete_account_uc.dart';
import '../../src/feature/manager/profile/domain/usecase/get_profile_photo_uc.dart';
import '../../src/feature/manager/profile/domain/usecase/update_profile_photo.dart';
import '../../src/feature/manager/profile/domain/usecase/update_profile_uc.dart';
import '../../src/feature/manager/profile/presentation/logic/profile_cubit.dart';
import '../../src/feature/manager/register/data/remote/manager_register_api_serivces.dart';
import '../../src/feature/manager/register/data/remote/manager_register_remote_ds.dart';
import '../../src/feature/manager/register/domain/repository/manager_register_repo.dart';
import '../../src/feature/manager/register/presentation/logic/manager_register/manager_register_cubit.dart';
import '../../src/feature/sales/home/domain/usecases/get_banner_u_c.dart';
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

 getIt.registerLazySingleton<AuthRemoteDs>(
      () => AuthRemoteDsImpl(getIt()));

      
  ///! -- Repositories -- ///
  getIt.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(getIt()));

  getIt.registerLazySingleton<ManagerRegisterRepo>(
      () => ManagerRegisterRepoImpl(getIt()));
 getIt.registerLazySingleton<SalesRegisterRepo>(
      () => SalesRegisterRepoImpl(getIt()));
 getIt.registerLazySingleton<ChefRegisterRepo>(
      () => ChefRegisterRepoImpl(getIt()));

 getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(getIt()));


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
    () => ManagerRegisterUseCase(getIt())
  );
 getIt.registerLazySingleton<VerifyEmailUseCase>(
    () => VerifyEmailUseCase(getIt())
  );
getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt()),
  );
getIt.registerLazySingleton<SalesRegisterUseCase>(
    () => SalesRegisterUseCase(getIt()),
  );
getIt.registerLazySingleton<ChefRegisterUseCase>(
    () => ChefRegisterUseCase(getIt()),
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

       getIt.registerFactory<SalesRegisterCubit>(
      () => SalesRegisterCubit(getIt()));
       getIt.registerFactory<ChefRegisterCubit>(
      () => ChefRegisterCubit(getIt()));

 getIt.registerFactory<VerifyEmailCubit>(
      () => VerifyEmailCubit(getIt()));

      getIt.registerFactory<LoginCubit>(
      () => LoginCubit(getIt()));
       getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiServiceImpl(getIt<ApiConsumer>()),
  );

  ///! Data Sources ///
  getIt.registerLazySingleton<RemoteDS>(
    () => RemoteDS(getIt<HomeApiService>()),
  );

  ///! Repositories ///
  getIt.registerLazySingleton<HomeRepos>(
    () => ReposImpl(getIt<RemoteDS>()),
  );

  ///! Use Cases ///
  getIt.registerLazySingleton<GetProfileUS>(
    () => GetProfileUS(getIt<HomeRepos>()),
  );

  getIt.registerLazySingleton<GetBannerUC>(
    () => GetBannerUC(getIt<RemoteDS>()),
  );

  getIt.registerLazySingleton<GetOrderStatsUC>(
    () => GetOrderStatsUC(getIt<RemoteDS>()),
  );

  ///! Cubit ///
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(
      getIt<GetBannerUC>(),
      getIt<GetProfileUS>(),
      getIt<GetOrderStatsUC>(),
    ),
  );
}
