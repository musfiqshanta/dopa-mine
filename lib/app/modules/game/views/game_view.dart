import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../game/controllers/game_controller.dart';
import '../../home/views/home_view.dart';

class GameView extends GetView<GameController> {
  GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameView'),
        centerTitle: true,
      ),
      body: MostRecent(),
    );
  }
}

class MostRecent extends StatelessWidget {
  MostRecent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GameController _controller = Get.put(GameController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  label: Text("Search Game")),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 3,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TabBar(
                  labelColor: Colors.black,
                  controller: _controller.tabController,
                  tabs: [
                    Tab(
                      child: Text("My Feed"),
                    ),
                    Tab(
                      child: Text("Best Match"),
                    ),
                    Tab(
                      child: Text("Most Recent"),
                    ),
                  ]),
            ),
            SizedBox(
              height: 2000,
              child: TabBarView(
                controller: _controller.tabController,
                children: [
                  Column(
                    children: [
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                    ],
                  ),
                  Column(
                    children: [
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                    ],
                  ),
                  Column(
                    children: [
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                      GameCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
