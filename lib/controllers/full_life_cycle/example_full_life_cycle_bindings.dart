import 'package:get/get.dart';
import 'example_full_life_cycle_controller.dart';

class ExampleFullLifeCycleBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ExampleFullLifeCycleController());
  }
}
