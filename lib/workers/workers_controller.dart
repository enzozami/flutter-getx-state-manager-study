import 'dart:developer';

import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _nome = 'Enzo'.obs;

  String get nome => _nome.value;

  @override
  void onInit() {
    // final everWorker = ever(
    //   _nome,
    //   (nome) {
    //     log('Executando o worker ever');
    //     log(nome);
    //   },
    //   cancelOnError: true,
    //   condition: () => _nome.value == 'Enzo',
    // );
    // _workers.add(everWorker);

    final onceWorker = once<String>(_nome, (nome) {
      log('Executando o worker ever');
      log(nome);
    });

    _workers.add(onceWorker);
    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker.dispose();
    }
    super.onClose();
  }

  void alterarNome(String value) {
    _nome(value);
  }
}
