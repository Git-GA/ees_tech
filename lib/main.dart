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
      var user = User()
        ..id = settingsData!.userId!
        ..nickname = 'RachelDare'
        ..role = 'God'
        ..activeCourse = 1
        ..lvl = 1
        ..exp = 600;
      await isar.users.put(user);
    });
  }

  var course1 = Course()
    ..id = 1
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..partIds = [0, 1, 2]
    ..currentIndex = 2;
  var course2 = Course()
    ..id = 2
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..partIds = [14, 19, 11]
    ..currentIndex = 2;
  var course3 = Course()
    ..id = 3
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..partIds = [14, 19, 11]
    ..currentIndex = 2;
  var part1 = Part()
    ..id = 0
    ..title = 'Test Part'
    ..expAmount = 600
    ..stageIds = [1, 2, 3, 4, 5]
    ..currentIndex = 3;

  var part2 = Part()
    ..id = 1
    ..title = 'Test Part2'
    ..expAmount = 600
    ..stageIds = [5, 4, 3]
    ..currentIndex = 2;

  var part3 = Part()
    ..id = 2
    ..title = 'Test Part3'
    ..expAmount = 600
    ..stageIds = [2, 1]
    ..currentIndex = 1;

  var stage1 = Stage()
    ..id = 1
    ..title = 'STAGE TITLE MEGA DRAGON 6000000'
    ..description = 'Hi)'
    ..expAmount = 5
    ..pageIds = []
    ..currentIndex = 2;

  var stage2 = Stage()
    ..id = 2
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..pageIds = []
    ..currentIndex = 2;
  var stage3 = Stage()
    ..id = 3
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..pageIds = []
    ..currentIndex = 2;
  var stage4 = Stage()
    ..id = 4
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..pageIds = []
    ..currentIndex = 2;
  var stage5 = Stage()
    ..id = 5
    ..title = 'Test Title'
    ..description = 'Hi)'
    ..expAmount = 5
    ..pageIds = []
    ..currentIndex = 2;

  await isar.writeTxn(() async {
    await isar.courses.putAll([course1, course2, course3]);
    await isar.parts.putAll([part1, part2, part3]);
    await isar.stages.putAll([stage1, stage2, stage3, stage4, stage5]);
  });

  //Controllers init
  Get.put(MainController(), permanent: true)
    ..settings = settings
    ..courses = isar.courses
    ..users = isar.users
    ..parts = isar.parts
    ..stages = isar.stages;
  Get.put(CourseController(), permanent: true)
    ..courses = isar.courses.where().findAllSync();

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
