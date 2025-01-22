import 'package:charlot/app.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  getIt<CacheHelper>().init();
  runApp(const MyApp());
}
