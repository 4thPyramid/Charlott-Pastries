import 'package:charlot/src/app.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'generated/codegen_loader.g.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator(); 
  await getIt<CacheHelper>().init(); 
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translate', 
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}
