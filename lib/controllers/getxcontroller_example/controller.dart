import 'dart:developer';

import 'package:get/get.dart';

class Controller extends GetxController {
  final nome = 'Enzo'.obs;

  @override
  Future<void> onInit() async {
    // await 2.seconds.delay();
    log('onInit');
    super.onInit();
  }

  @override
  void onReady() {
    log('onReady');

    super.onReady();
  }

  @override
  void onClose() {
    log('onClose');

    super.onClose();
  }

  void alterarNome() {
    nome('Enzinho');
  }
}
