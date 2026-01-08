import 'package:assignment/helper/routine.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'views/login/login_view.dart';
import 'package:assignment/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:assignment/themes/theme.dart';

import 'package:get/get.dart';
import "package:assignment/sources/repository.dart";

late final Isar isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // REQUIRED for async before runApp

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/login',
      getPages: AppRoutes.routes,
      initialBinding: BindingsBuilder(() => initialBinding()),
    );
  }
}

initialBinding() {
  Get.lazyPut(() => Repository());
}
