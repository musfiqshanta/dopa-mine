import 'package:get/get.dart';

import '../controllers/game_create_controller.dart';

class GameCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameCreateController>(
      () => GameCreateController(),
    );
  }
}
