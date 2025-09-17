import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  final _nome = 'Enzo'.obs;

  String get nome => _nome.value;

  void alterarNome() {
    _nome('Enzinho');
  }
}
