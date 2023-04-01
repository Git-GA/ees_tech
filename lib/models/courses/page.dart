import 'package:isar/isar.dart';

part 'page.g.dart';

@collection
class Page {
  late Id id;

  Info? info;

  Question? question;
}

@embedded
class Info {
  String? title;

  String? text;
}

@embedded
class Question {
  String? title;

  String? text;

  // first answer is correct
  List<String>? answers;
}
