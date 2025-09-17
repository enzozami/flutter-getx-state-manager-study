import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TiposReativosGenericosNulosPage extends StatelessWidget {
  final nome = Rxn<String>('Enzo Zamineli');
  final isAluno = Rxn<bool>(true);
  final qtdCursos = Rxn<int>(2);
  final valorCurso = Rxn<double>(12.3);
  final jornadas = Rxn<List<String>>([
    'Jornada GetX',
    'Jornada ADF',
  ]);
  final aluno = Rxn<Map<String, dynamic>>({
    'id': 1,
    'nome': 'Enzo Zamineli',
  });

  final alunoModel = Rxn<Aluno>(Aluno(
    id: 1,
    nome: 'Enzinho',
    email: 'enzinzamineli@gmail.br',
    curso: 'jornada getx',
  ));

  TiposReativosGenericosNulosPage({super.key});

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
            return Text('Id do aluno: ${aluno.value?['id']}');
          }),
          Obx(() {
            debugPrint('Montando nome do aluno');
            return Text('Id do aluno: ${aluno.value?['nome']}');
          }),
          Obx(() {
            debugPrint('Montando Id do alunoModel');
            return Text('Id do alunoModel: ${alunoModel.value?.id}');
          }),
          Obx(() {
            debugPrint('Montando nome do alunoModel');
            return Text('Id do alunoModel: ${alunoModel.value?.nome}');
          }),
          Obx(() {
            return Column(
              children: jornadas.value?.map(Text.new).toList() ?? [],
            );
          }),
          ElevatedButton(
            onPressed: () {
              aluno.value?['id'] = 10;
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
              jornadas.value?.assign('Dart & Flutter');
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
