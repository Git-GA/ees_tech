import 'package:isar/isar.dart';

part 'settings.g.dart';

@collection
class Settings {
  Id id = Isar.autoIncrement;

  int? userId;

  String? lang;

  bool? darkTheme;
}
