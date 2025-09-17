import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_state_manager/atualizacao/usuario_model.dart';

class AtualizacaoObjetosPage extends StatelessWidget {
  final usuarioModel = UsuarioModel(
    id: 1,
    nome: 'Enzo',
    email: 'enzo@gmail.com',
  ).obs;

  AtualizacaoObjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualização de Objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(usuarioModel.value.id.toString());
            }),
            Obx(() {
              return Text(usuarioModel.value.nome);
            }),
            Obx(() {
              return Text(usuarioModel.value.email);
            }),
            ElevatedButton(
              onPressed: () {
                usuarioModel.value.nome = 'Enzinho';
                usuarioModel.refresh();
              },
              child: Text('Atualização com refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                usuarioModel.value = usuarioModel.value.copyWith(nome: 'Enzinho - copyWith');
              },
              child: Text('Atualização com refresh - copyWith'),
            ),
            ElevatedButton(
              onPressed: () {
                usuarioModel.update((usuario) => usuario?.nome = 'Enzinho - Update');
              },
              child: Text('Atualização com refresh - Update'),
            ),
          ],
        ),
      ),
    );
  }
}
