import 'package:dopa_mine/main_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../gameCreate/views/game_create_view.dart';
import '../../gamePlay/views/game_play_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
        title: const Text('Dopa-Mine'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 50),
                backgroundColor: Color(0xff30336b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
              ),
              onPressed: () {
                Get.to(GameCreateView(), transition: Transition.upToDown);
              },
              child: Text(
                "Create New Game",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 3,
            ),
            GameCard(),
            GameCard(),
            GameCard(),
            GameCard(),
            GameCard(),
          ],
        )),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffCFF7E7),
      elevation: 10,
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    "Who would win the eurovision",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
              ],
            ),
            Text(
              "Entry : 50 nis, 6/10 - Now The house 300 nis",
              style: TextStyle(color: Color(0xff7f8c8d)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    horizontalTitleGap: -10,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.supervised_user_circle_outlined),
                    title: Text("John Doe"),
                  ),
                ),
                Text(
                  "Game End : 30:05:23",
                  style: TextStyle(color: Color(0xff7f8c8d)),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
              ),
              onPressed: () {
                Get.to(GamePlayView());
              },
              child: Text(
                "Join Game",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
