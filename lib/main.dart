import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get_state_manager/atualizacao/atualizacao_objetos_page.dart';
import 'package:get_state_manager/basico/reatividade_page.dart';
import 'package:get_state_manager/controllers/controllers_home_page.dart';
import 'package:get_state_manager/controllers/getxcontroller_example/controller.dart';
import 'package:get_state_manager/controllers/getxcontroller_example/getx_controller_example_page.dart';
import 'package:get_state_manager/getx_widget/getx_widget/getx_widget_page.dart';
import 'package:get_state_manager/home_page.dart';
import 'package:get_state_manager/local_state_widget/local_state_widget_page.dart';
import 'package:get_state_manager/tipos/tipos_obs_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_nulos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_page.dart';
import 'package:get_state_manager/workers/workers_bindings.dart';
import 'package:get_state_manager/workers/workers_page.dart';

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
        GetPage(name: '/tiposObs', page: () => TiposObsPage()),
        GetPage(name: '/atualizacao', page: () => AtualizacaoObjetosPage()),
        GetPage(
          name: '/controllers',
          page: () => ControllersHomePage(),
          children: [
            GetPage(
              name: '/getxController',
              binding: BindingsBuilder(() {
                Get.lazyPut(() => Controller());
              }),
              page: () => GetxControllerExamplePage(),
            ),
          ],
        ),
        GetPage(
          name: '/getxWidget',
          page: () => GetxWidgetPage(),
        ),
        GetPage(
          name: '/localStateWidget',
          page: () => LocalStateWidgetPage(),
        ),
        GetPage(
          name: '/workers',
          binding: WorkersBindings(),
          page: () => WorkersPage(),
        )
      ],
    );
  }
}
