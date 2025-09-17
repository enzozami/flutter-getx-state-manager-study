import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './getx_widget_controller.dart';

class GetxWidgetPage extends GetView<GetxWidgetController> {
  const GetxWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetxWidgetPage'),
      ),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.nome),
                ElevatedButton(
                  onPressed: () => controller.alterarNome(),
                  child: Text('Alterar Nome'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
