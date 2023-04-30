import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:math' as math;
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerRight,
                  tileMode: TileMode.mirror,
                  colors: [
                    Color(0xff16a085),
                    Color(0xff273c75),
                  ],
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Musfiq Shanta",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "musfiqshanta@gmail.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff30336b),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "My Games",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff30336b),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Games I liked",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff30336b),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Games history",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff30336b),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff30336b),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.bottomCenter,
                //  fit: StackFit.passthrough,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    child: Image.network(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                  const Positioned(
                    bottom: -50,
                    child: Center(
                      child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800")),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "Musfiq Shanta",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                "Good Morning",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff079992)),
              ),
              SizedBox(
                height: 5,
              ),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Card(
                      color: Get.theme.primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            Text(
                              "Rating",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "4.7",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Card(
                      color: Get.theme.primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            Text(
                              "Game Played",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Card(
                      color: Get.theme.primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            Text(
                              "Money Won",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$ 104050",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Card(
                      color: Get.theme.primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            Text(
                              "Winning",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "60%",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffe74c3c),
                    fixedSize: Size(Get.mediaQuery.size.width, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add Payment",
                    style: TextStyle(fontSize: 18),
                  )),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  "Email",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "musfiqshanta@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "Phone",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "555 456 898",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
