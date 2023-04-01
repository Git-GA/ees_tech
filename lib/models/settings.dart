import 'package:isar/isar.dart';

part 'settings.g.dart';

@collection
class Settings {
  Id? id = null;

  int? userId;

  String? lang;

  bool? darkTheme;
}
