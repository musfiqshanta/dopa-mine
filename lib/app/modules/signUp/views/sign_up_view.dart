import 'package:dopa_mine/app/modules/signIn/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Welcome To Dopa Mine"),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        label: Text("Name"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        label: Text("Email"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Enter Your Password"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]'))
                    ],
                    decoration: const InputDecoration(
                        label: Text("Enter You Phone Number"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // CheckboxListTile(
                  //   checkColor: Colors.white,
                  //   value: Get.find<SignUpController>().isChecked,
                  //   onChanged: (bool? value) {},
                  //   title: Text("I agree to the Terms & Conditions"),
                  //   controlAffinity: ListTileControlAffinity.leading,
                  // ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Get.theme.primaryColor),
                          fixedSize: MaterialStateProperty.all(
                              Size(Get.mediaQuery.size.width, 50))),
                      onPressed: () {
                        Get.to(SigInView(), transition: Transition.rightToLeft);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 22),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Have an account",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SigInView(), transition: Transition.rightToLeft);
                      },
                      child: Text("Sign In"))
                ],
              ),
            ),
          ),
        ));
  }
}
