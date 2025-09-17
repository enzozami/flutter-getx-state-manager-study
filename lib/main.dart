import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_state_manager/basico/reatividade_page.dart';
import 'package:get_state_manager/home_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_nulos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/basico', page: () => ReatividadePage()),
        GetPage(name: '/tiposReativos', page: () => TiposReativosPage()),
        GetPage(name: '/tiposReativosGenericos', page: () => TiposReativosGenericosPage()),
        GetPage(
            name: '/tiposReativosGenericosNulos', page: () => TiposReativosGenericosNulosPage()),
      ],
    );
  }
}
