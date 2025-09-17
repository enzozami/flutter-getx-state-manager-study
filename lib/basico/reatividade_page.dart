import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ReatividadePage extends StatelessWidget {
  final _counter = 0.obs;

  ReatividadePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reatividade - Básico - Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter:'),
              Obx(() {
                return Text('${_counter.value}');
              }),
              ElevatedButton(
                onPressed: () {
                  _counter.value++;
                },
                child: Text('Soma 1'),
              ),
            ],
          ),
        ));
  }
}
