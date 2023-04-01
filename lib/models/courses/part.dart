import 'package:isar/isar.dart';

part 'part.g.dart';

@collection
class Part {
  late Id id;

  String? title;

  int? expAmount;

  List<int>? stageIds;

  int? currentIndex;
}
