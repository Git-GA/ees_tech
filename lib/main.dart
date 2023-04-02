import 'package:ees_tech/models/courses/page.dart';
import 'package:ees_tech/models/courses/part.dart';
import 'package:ees_tech/models/courses/stage.dart';
import 'package:ees_tech/models/personalData/user.dart';
import 'package:ees_tech/models/settings.dart';
import 'package:ees_tech/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'controllers/course.dart';
import 'i18n/en_US/strings.g.dart';
import 'models/courses/course.dart';

Future<void> main() async {
  //Database init
  final isar = await Isar.open([
    SettingsSchema,
    UserSchema,
    CourseSchema,
    PageSchema,
    StageSchema,
    PartSchema
  ]);
  final settings = isar.settings;
  if (await settings.get(1) == null) {
    await isar.writeTxn(() async {
      var properties = Settings()..userId = 1;
      await settings.put(properties);
    });
  }

  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(AppLocale.ru);

  //Controllers init
  Get.put(CourseController(), permanent: true);
  Get.put(UserController(), permanent: true);
  final homePageController = Get.put(HomePageController(), permanent: true);
  homePageController.InitRandomData();

  //Setting SysemUIOverlay
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent));
// Setting SystmeUIMode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale:
          TranslationProvider.of(context).flutterLocale, // use provideraQ  8
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
