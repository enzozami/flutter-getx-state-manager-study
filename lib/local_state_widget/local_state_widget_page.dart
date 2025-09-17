import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local State Widget Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueBuilder<bool?>(
              initialValue: true,
              builder: (obscureValue, updater) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: obscureValue!,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          updater(!obscureValue);
                        },
                        icon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                );
              },
              onUpdate: (p0) => log('Alterado para $p0'),
              onDispose: () => log('Removido da arvore de widget'),
            ),
            ObxValue<RxBool>((obscureData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: obscureData.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureData.toggle();
                      },
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
              );
            }, true.obs)
          ],
        ),
      ),
    );
  }
}
