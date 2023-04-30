import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import 'package:get/get.dart';

import '../controllers/game_play_controller.dart';

class GamePlayView extends GetView<GamePlayController> {
  const GamePlayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().millisecondsSinceEpoch + 10000 * 300;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Play Game'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Who Would win the EuroVision? ",
                    style: TextStyle(fontSize: 22),
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
                      CountdownTimer(
                        endTime: endTime,
                      ),
                    ],
                  ),
                  Answer(
                    answer: "Germany",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(
                    answer: "Spain",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(
                    answer: "Purtogal",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(
                    answer: "Franch",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize:
                                  Size(Get.mediaQuery.size.width / 2.2, 50)),
                          onPressed: () {},
                          child: Text(
                            "Join Game",
                            style: TextStyle(fontSize: 18),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize:
                                  Size(Get.mediaQuery.size.width / 2.2, 50),
                              backgroundColor: Color(0xff273c75)),
                          onPressed: () {},
                          child: Text(
                            "Clone Game",
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Entry : 30 Nis",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5f27cd)),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Total : 300 Nis",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff22a6b3)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Share Game",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Image.asset(
                          "assets/images/whatsapp.png",
                          width: 25,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Answer extends StatelessWidget {
  String answer;
  Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color(0xff7ed6df),
      onTap: () {},
      leading: Text(
        "(A)",
        style: TextStyle(fontSize: 18),
      ),
      title: Text(
        answer,
        style: TextStyle(fontSize: 18),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("3/6"),
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Participate List of A",
                      content: SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Text("John Doe");
                            }),
                      ));
                },
                icon: Icon(Icons.more_vert))
          ],
        ),
      ),
      // trailing: Row(
      //   children: [Text("3/6"), Text("data")],
      // ),
    );
  }
}
