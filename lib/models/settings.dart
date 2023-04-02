import 'package:isar/isar.dart';

part 'settings.g.dart';

@collection
class Settings {
  Id id = Isar.autoIncrement;

  int? userId = 1; //До реализации авторизации

  String? lang;

  bool? darkTheme;
}
