import 'package:ees_tech/models/courses/stage.dart';
import 'package:ees_tech/models/personalData/user.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxList favorites_list = [].obs;

  RxList important_people = [].obs;

  RxList all_course = [].obs;

  void InitRandomData() {
    favorites_list.value = [
      Stage()
        ..title = "Как не сувать пальцы в розетку"
        ..description = "Из курса техника безопасности",
      Stage()
        ..title = "Как зовут начальника"
        ..description = "Из курса знакомство с команией",
      Stage()
        ..title = "Как не грубить коллегам"
        ..description = "Из курса корпоративная этика",
    ];

    important_people.value = [
      User()
        ..name = 'Иван Иванович Иванов'
        ..role = 'Тимлид',
      User()
        ..name = 'Иван Иванович Иванов'
        ..role = 'SMM',
      User()
        ..name = 'Иван Иванович Иванов'
        ..role = 'Тимлид',
    ];
  }
}
