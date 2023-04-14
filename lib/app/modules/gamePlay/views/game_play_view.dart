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
                  Answer(),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(),
                  SizedBox(
                    height: 10,
                  ),
                  Answer(),
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
                            "Duplicates Game",
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Participate List",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "(A).",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "(B).",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "(C).",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "(D).",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "John Doe",
                        style: TextStyle(fontSize: 18),
                      ),
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
  const Answer({
    super.key,
  });

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
        "3/14",
        style: TextStyle(fontSize: 18),
      ),
      trailing: SizedBox(
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("3/6"),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
      ),
      // trailing: Row(
      //   children: [Text("3/6"), Text("data")],
      // ),
    );
  }
}
