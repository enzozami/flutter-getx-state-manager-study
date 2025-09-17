import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class TiposReativosPage extends StatelessWidget {
  final nome = RxString('Enzo Zamineli');
  final isAluno = RxBool(true);
  final qtdCursos = RxInt(2);
  final valorCurso = RxDouble(12.3);
  final jornadas = RxList([
    'Jornada GetX',
    'Jornada ADF',
  ]);
  final aluno = RxMap({
    'id': 1,
    'nome': 'Enzo Zamineli',
  });

  TiposReativosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            debugPrint('Montando Id do aluno');
            return Text('Id do aluno: ${aluno['id']}');
          }),
          Obx(() {
            debugPrint('Montando nome do aluno');
            return Text('Id do aluno: ${aluno['nome']}');
          }),
          Obx(() {
            return Column(
              children: jornadas.map(Text.new).toList(),
            );
          }),
          ElevatedButton(
            onPressed: () {
              aluno['id'] = 10;
            },
            child: Text(
              'Alterar Id do usuário',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // add - adiciona item
              // jornadas.add('Dart & Flutter');
              // assign deleta o que tem e sobrescreve o que está aí (Dart & Flutter) nesse caso
              jornadas.assign('Dart & Flutter');
            },
            child: Text(
              'Adicionar jornada',
            ),
          ),
        ],
      )),
    );
  }
}
