import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/controllers/getxcontroller_example/controller.dart';

class GetxControllerExamplePage extends StatefulWidget {
  const GetxControllerExamplePage({super.key});

  @override
  State<GetxControllerExamplePage> createState() => _GetxControllerExamplePageState();
}

class _GetxControllerExamplePageState extends State<GetxControllerExamplePage> {
  @override
  void dispose() {
    log('dispose GetxControllerExamplePage');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Build GetxControllerExamplePage');

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(Get.find<Controller>().nome.value);
            }),
            ElevatedButton(
              onPressed: () => Get.find<Controller>().alterarNome(),
              child: Text('Alterar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
