import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_state_manager/get_builder/get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilderPage'),
      ),
      body: Center(
        child: GetBuilder<GetBuilderController>(builder: (controller) {
          debugPrint('############### GetBuilder Geral ###############');
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.nome),
              GetBuilder<GetBuilderController>(
                  id: 'contador',
                  builder: (controller) {
                    debugPrint('############### GetBuilder Contador ###############');
                    return Text(controller.contador.toString());
                  }),
              ElevatedButton(
                onPressed: () {
                  controller.alterarNome();
                },
                child: Text('Alterar nome'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text('increment'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
