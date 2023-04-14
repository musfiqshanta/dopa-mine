import 'package:dopa_mine/app/modules/Game/views/game_view.dart';
import 'package:dopa_mine/app/modules/game/controllers/game_controller.dart';
import 'package:dopa_mine/app/modules/gameCreate/views/game_create_view.dart';
import 'package:dopa_mine/app/modules/home/views/home_view.dart';
import 'package:dopa_mine/app/modules/profile/views/profile_view.dart';
import 'package:dopa_mine/app/modules/signIn/views/sign_in_view.dart';
import 'package:dopa_mine/app/modules/signUp/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/gamePlay/views/game_play_view.dart';
import 'app/routes/app_pages.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    GetMaterialApp(
        title: "Application",

        ///initialRoute: AppPages.INITIAL,
        theme: ThemeData(
            //primaryColor: Color(0xff4B2B78),

            primaryColor: Color(0xff27ae60),
            splashColor: Color(0xff27ae60),
            textTheme: GoogleFonts.ralewayTextTheme(),
            appBarTheme: AppBarTheme(backgroundColor: Color(0xff27ae60)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff27ae60))))),
        getPages: AppPages.routes,
        home: Main()),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  Widget? _child = HomeView();
  void _handleNavigationChange(int index) {
    print(index);
    setState(() {
      switch (index) {
        case 0:
          _child = GameView();
          break;
        case 1:
          _child = HomeView();
          break;
        case 2:
          _child = SigInView();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.fastLinearToSlowEaseIn,
        switchOutCurve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 1000),
        child: _child,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.sports_outlined, extras: {"label": "partner"}),
          FluidNavBarIcon(icon: Icons.home, extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              icon: Icons.account_circle_sharp, extras: {"label": "partner"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(
          iconUnselectedForegroundColor: Colors.white,
          iconSelectedForegroundColor: Colors.white,
          barBackgroundColor: Color(0xff27ae60),
        ),
        scaleFactor: 1.5,
        defaultIndex: 1,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }
}
