import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:charlot/core/routes/app_routers.dart';
import 'package:charlot/core/theme/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/app_cubit/app_cubit.dart';
import '../core/services/service_locator.dart';
import 'feature/intro/presentation/logic/user_type_cubit.dart';
import 'feature/language/presentation/logic/language_cubit.dart';

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
            BlocProvider<LanguageCubit>(
                create: (_) => getIt<LanguageCubit>()..loadSavedLanguage()),
            BlocProvider(
              create: (context) => UserTypeCubit(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: router,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            localeListResolutionCallback: (locales, supportedLocales) {
              return locales?.firstWhere(
                (locale) => supportedLocales.contains(locale),
                orElse: () => supportedLocales.first,
              );
            },
            builder: (context, child) {
              return child!;
            },
          ),
        );
      },
    );
  }
}
