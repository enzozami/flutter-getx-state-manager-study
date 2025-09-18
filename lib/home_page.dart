import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/basico'),
              child: Text('Básico - Reatividade'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/tiposReativos'),
              child: Text('Tipos Reativos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/tiposReativosGenericos'),
              child: Text('Tipos Reativos Genericos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/tiposReativosGenericosNulos'),
              child: Text('Tipos Reativos Genericos Nulos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/tiposObs'),
              child: Text('Tipos Obs'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/atualizacao'),
              child: Text('Atualização de Objetos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/controllers'),
              child: Text('Controllers'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getxWidget'),
              child: Text('GetX Widget'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/localStateWidget'),
              child: Text('Local State Widget'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/workers'),
              child: Text('Workers'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/firstRebuild'),
              child: Text('First Rebuild'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getBuilder'),
              child: Text('Get Builder'),
            ),
          ],
        ),
      ),
    );
  }
}
