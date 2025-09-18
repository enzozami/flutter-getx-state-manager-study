import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstRebuildPage extends StatefulWidget {
  const FirstRebuildPage({super.key});

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isAluno = false.obs;

  @override
  void initState() {
    super.initState();
    // isAluno.firstRebuild = false; não é muito recomendado utilizar
    ever<bool>(isAluno, (isAluno) {
      Get.snackbar('Ever', 'É aluno $isAluno');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstRebuildPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Switch(value: isAluno.value, onChanged: (_) {});
            }),
            ElevatedButton(
                onPressed: () {
                  isAluno(true);
                },
                child: Text('Set True')),
            ElevatedButton(
                onPressed: () {
                  isAluno(false);
                },
                child: Text('Set False')),
          ],
        ),
      ),
    );
  }
}
