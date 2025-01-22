import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:charlot/core/routes/app_routers.dart';
import 'package:charlot/core/theme/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_cubit/app_cubit.dart';
import 'core/services/service_locator.dart';

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
        ],

        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          routerConfig: router,
          supportedLocales: const [Locale('ar')],
            locale: const Locale('ar', ''),
        
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeListResolutionCallback: (locales, supportedLocales) {
            return const Locale('ar');
          },
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            );
          },
        ),
        );
      },
    );
  }
}
