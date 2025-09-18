import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  var nome = 'Enzo';
  var contador = 0;

  void alterarNome() {
    nome = 'Enzinho';
    update();
  }

  void increment() {
    contador++;
    update(['contador']);
  }
}
