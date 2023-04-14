import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_create_controller.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class GameCreateView extends GetView<GameCreateController> {
  const GameCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    late String? datetime = "Select End Date";

    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Game Details"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text("Enter Game Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: Get.mediaQuery.size.width / 1.5,
                        child: TextField(
                          decoration: InputDecoration(
                              prefix: Text("A"),
                              label: Text("Choice"),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(width: 1))),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: Get.mediaQuery.size.width / 2,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text("Game Entry Fee"),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(width: 1))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize:
                                Size(Get.mediaQuery.size.width / 2.5, 50),
                            backgroundColor: Color(0xffB33771)),
                        onPressed: () {
                          DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime(2023),
                            onChanged: (date) {
                              print('change $date');
                            },
                            onConfirm: (date) {
                              datetime = date.toString();
                              print('confirm $datetime');
                            },
                            currentTime: DateTime.now(),
                          );
                        },
                        child: Text(
                          datetime,
                          style: TextStyle(fontSize: 18),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.mediaQuery.size.width, 50)),
                    onPressed: () {},
                    child: Text(
                      "Create Game",
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
          ),
        ));
  }

  
}
