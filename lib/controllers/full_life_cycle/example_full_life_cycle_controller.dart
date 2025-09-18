import 'dart:developer';

import 'package:get/get.dart';

class ExampleFullLifeCycleController extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onInit() {
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

  @override
  void onDetached() {
    log('onDetached');
  }

  @override
  void onHidden() {
    log('onHidden');
  }

  @override
  void onInactive() {
    log('onInactive');
  }

  @override
  void onPaused() {
    log('onPaused');
  }

  @override
  void onResumed() {
    log('onResumed');
  }
}
