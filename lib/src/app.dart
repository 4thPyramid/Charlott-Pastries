import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:charlot/core/routes/app_routers.dart';
import 'package:charlot/core/theme/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/app_cubit/app_cubit.dart';
import '../core/services/service_locator.dart';
import 'feature/intro/presentation/logic/user_type_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AppCubit>(),
            ),
            BlocProvider(
              create: (context) => UserTypeCubit(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: router,
            supportedLocales: const [
              Locale('en'),
              Locale('ar'),
            ],
            locale: context.locale,
            
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeListResolutionCallback: (locales, supportedLocales) {
              return const Locale('en');
            },
            builder: (context, child) {
              return  child!;
            
            },
          ),
        );
      },
    );
  }
}
