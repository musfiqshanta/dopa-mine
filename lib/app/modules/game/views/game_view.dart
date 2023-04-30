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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800")),
        ),
        title: const Text('Game View'),
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
                      child: Text("My Games"),
                    ),
                    Tab(
                      child: Text("Games Liked"),
                    ),
                    Tab(
                      child: Text("Games History"),
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
