import 'package:charlot/core/app_cubit/app_cubit.dart';
import 'package:charlot/core/common/banner_feature/data/data_source/banner_api_servcies.dart';
import 'package:charlot/core/common/banner_feature/data/data_source/banner_remote_ds.dart';
import 'package:charlot/core/common/banner_feature/domain/repo/banners_repo.dart';
import 'package:charlot/core/common/banner_feature/domain/use_case/banner_use_case.dart';
import 'package:charlot/core/common/banner_feature/presentation/logic/cubit/banner_cubit.dart';
import 'package:charlot/core/common/branches_feature/data/data_source/branches_api_services.dart';
import 'package:charlot/core/common/branches_feature/data/data_source/branches_data_source.dart';
import 'package:charlot/core/common/branches_feature/domain/repo/branches_repo.dart';
import 'package:charlot/core/common/branches_feature/domain/usecases/get_branches_uc.dart';
import 'package:charlot/core/common/branches_feature/presentation/logic/cubit/cubit/branches_cubit.dart';
import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_api_sevices.dart';
import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_remote_data_source.dart';
import 'package:charlot/core/common/specialization_feature/domain/usecases/get_specialization_uc.dart';
import 'package:charlot/core/common/specialization_feature/presentation/logic/cubit/specialization_cubit.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/api/dio_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/src/feature/auth/domain/usecase/login_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/datasource/orders_type_api_sevcies.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/datasource/orders_type_remote_data_source.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/repo/orders_type_repo.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/accepted_orders_use_caes.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/completed_orders_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/new_orders_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/pinding_orders_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/presentation/logic/cubit/orders_type_cubit.dart';
import 'package:charlot/src/feature/location/data/datasource/map_picker_remote_data_source.dart';
import 'package:charlot/src/feature/location/domain/repo/map_picker_repo.dart';
import 'package:charlot/src/feature/location/domain/usecase/get_address_uc.dart';
import 'package:charlot/src/feature/location/presentation/cubit/map_picker_cubit.dart';
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

getIt.registerLazySingleton<OrdersTypeApiSevcies>(
  () => OrdersTypeApiSevciesImp(getIt())
);    

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

 getIt.registerLazySingleton<AuthRemoteDs>(
      () => AuthRemoteDsImpl(getIt()));
getIt.registerLazySingleton<OrdersTypeRemoteDataSource>(
      () => OrdersTypeRemoteDataSourceImp(getIt())
);
      
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

 getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(getIt()));
 getIt.registerLazySingleton<OrdersTypeRepo>(
  () => OrdersTypeRepoImp(getIt())
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
    () => ManagerRegisterUseCase(getIt())
  );

  getIt.registerLazySingleton<GetBranchesUc>(
    () => GetBranchesUc(getIt()),
  );
  getIt.registerLazySingleton<GetSpecializationUc>(
   () => GetSpecializationUc(getIt()),
 );

getIt.registerLazySingleton<SalesRegisterUseCase>(
    () => SalesRegisterUseCase(getIt()),
  );
getIt.registerLazySingleton<BannerUseCase>(
  () => BannerUseCase(getIt())
);

 getIt.registerLazySingleton<VerifyEmailUseCase>(
    () => VerifyEmailUseCase(getIt())
  );
getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt()),
  );

getIt.registerLazySingleton<ChefRegisterUseCase>(
    () => ChefRegisterUseCase(getIt()),
  );

  getIt.registerLazySingleton<CompletedOrdersUseCase>(
    () => CompletedOrdersUseCase(getIt())
  );
   getIt.registerLazySingleton<AcceptedOrdersUseCaes>(
    () => AcceptedOrdersUseCaes(getIt())
  );
   getIt.registerLazySingleton<PendingOrdersUseCase>(
    () => PendingOrdersUseCase(getIt())
  );
 getIt.registerLazySingleton<NewOrdersUseCase>(
  () => NewOrdersUseCase(getIt())
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
   getIt.registerFactory<BranchesCubit>(
      () => BranchesCubit(getIt()),
   );

   getIt.registerFactory<SpecializationCubit>(
      () => SpecializationCubit(getIt()),
   );   

   getIt.registerFactory<BannerCubit>(
      () => BannerCubit(getIt()),
   );
       getIt.registerFactory<ChefRegisterCubit>(
      () => ChefRegisterCubit(getIt()));

     getIt.registerFactory<VerifyEmailCubit>(
      () => VerifyEmailCubit(getIt()));

      getIt.registerFactory<LoginCubit>(
      () => LoginCubit(getIt()));

      getIt.registerFactory<OrdersTypeCubit>(
      () => OrdersTypeCubit(
        
        getIt<NewOrdersUseCase>(),
        getIt<CompletedOrdersUseCase>(),
      getIt<AcceptedOrdersUseCaes>(),
      getIt<PendingOrdersUseCase>(),
      ),);

}
