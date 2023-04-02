import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt page = 0.obs;
  late final settings;
  late final courses;

  final RxBool darkTheme = true.obs;
}
