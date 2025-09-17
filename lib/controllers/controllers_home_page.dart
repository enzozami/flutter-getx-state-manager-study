import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ControllersHomePage extends StatelessWidget {
  const ControllersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controllers HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/controllers/getxController');
              },
              child: Text('GetXController'),
            ),
          ],
        ),
      ),
    );
  }
}
