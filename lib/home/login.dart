import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reaction_fb_post/home/controller.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Obx(
        () => c.status.value != 1
            ? Center(
                child: TextButton(
                    onPressed: () => c.loginFB(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.facebook),
                        Text('Login FB')
                      ],
                    )),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
