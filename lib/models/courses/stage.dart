import 'package:isar/isar.dart';

part 'stage.g.dart';

@collection
class Stage {
  late Id id;

  String? title;

  String? description;

  int? expAmount;

  List<int>? pageIds;

  int? currentIndex;
}
