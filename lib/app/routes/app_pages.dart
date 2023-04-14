import 'package:get/get.dart';

import '../modules/game/bindings/game_binding.dart';
import '../modules/game/views/game_view.dart';
import '../modules/gameCreate/bindings/game_create_binding.dart';
import '../modules/gameCreate/views/game_create_view.dart';
import '../modules/gamePlay/bindings/game_play_binding.dart';
import '../modules/gamePlay/views/game_play_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  //AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.GAME,
      page: () => GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: _Paths.GAME_CREATE,
      page: () => const GameCreateView(),
      binding: GameCreateBinding(),
    ),
    GetPage(
      name: _Paths.GAME_PLAY,
      page: () => const GamePlayView(),
      binding: GamePlayBinding(),
    ),
  ];
}
