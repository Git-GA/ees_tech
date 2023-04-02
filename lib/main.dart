import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/controllers/main.dart';
import 'package:ees_tech/controllers/user.dart';
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
  var settingsData = await settings.get(1);
  if (settingsData == null) {
    await isar.writeTxn(() async {
      var properties = Settings()..userId = 1;
      await settings.put(properties);
      settingsData = await settings.get(1);
    });
  }
  //Controllers init
  Get.put(MainController(), permanent: true)
    ..settings = settings
    ..courses = isar.courses;
  Get.put(CourseController(), permanent: true);
  Get.put(UserController(), permanent: true);
  Get.put(HomePageController(), permanent: true).InitRandomData();

  WidgetsFlutterBinding.ensureInitialized();
  settingsData!.lang == null
      ? LocaleSettings.useDeviceLocale()
      : LocaleSettings.setLocale(AppLocale.values.singleWhere(
          (element) => element.languageCode == settingsData?.lang));

  // Setting SysemUIOverlay
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent));
// Setting SystmeUIMode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends GetView<MainController> {
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
      themeMode: controller.settings.getSync(1).darkTheme == null
          ? ThemeMode.system
          : controller.settings.getSync(1).darkTheme
              ? ThemeMode.dark
              : ThemeMode.light,
      routerConfig: router,
    );
  }
}
