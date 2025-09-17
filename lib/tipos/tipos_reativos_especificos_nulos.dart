import 'package:get/get_rx/src/rx_types/rx_types.dart';

class TiposReativosEspecificosNulos {
  final nome = RxnString('Enzo Zamineli');
  final isAluno = RxnBool(true);
  final qtdCursos = RxnInt(2);
  final valorCurso = RxnDouble(12.3);

  void teste() {
    isAluno.toggle();
    isAluno.isFalse;
  }
}
