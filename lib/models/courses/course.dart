import 'package:isar/isar.dart';

part 'course.g.dart';

@collection
class Course {
  late Id id;

  String? title;

  String? description;

  int? expAmount;

  List<int>? partIds;
}
