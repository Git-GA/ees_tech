import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  late Id id;
  String? nickname;
  String? name;
  String? role;
  int? activeCourse;
  int? lvl;
  int? exp;
}
