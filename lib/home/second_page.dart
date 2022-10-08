import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reaction_fb_post/home/controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(homeController.count.string),
        ),
      ),
      body: const Text('text'),
    );
  }
}
