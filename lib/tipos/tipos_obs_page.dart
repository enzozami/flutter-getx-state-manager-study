import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TiposObsPage extends StatelessWidget {
  final nome = 'Enzo Zamineli'.obs;
  final isAluno = true.obs;
  final qtdCursos = 2.obs;
  final valorCurso = 12.3.obs;
  final jornadas = [
    'Jornada GetX',
    'Jornada ADF',
  ].obs;
  final aluno = <String, dynamic>{
    'id': 1,
    'nome': 'Enzo Zamineli',
  }.obs;

  final alunoModel = Aluno(
    id: 1,
    nome: 'Enzinho',
    email: 'enzinzamineli@gmail.br',
    curso: 'jornada getx',
  ).obs;

  TiposObsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genericos Nulos'),
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
            debugPrint('Montando Id do alunoModel');
            return Text('Id do alunoModel: ${alunoModel.value.id}');
          }),
          Obx(() {
            debugPrint('Montando nome do alunoModel');
            return Text('Id do alunoModel: ${alunoModel.value.nome}');
          }),
          Obx(() {
            return Column(children: jornadas.map(Text.new).toList());
          }),
          ElevatedButton(
            onPressed: () {
              aluno['id'] = 10;
              aluno.refresh();
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
              jornadas.refresh();
            },
            child: Text('Adicionar jornada'),
          ),
          ElevatedButton(
            onPressed: () {
              alunoModel.value =
                  Aluno(id: 7, nome: 'Enz', email: 'enzin', curso: 'Jornada GetX PLUS');
              alunoModel.refresh();
            },
            child: Text(
              'Alterar ALUNO do alunoModel',
            ),
          ),
        ],
      )),
    );
  }
}
