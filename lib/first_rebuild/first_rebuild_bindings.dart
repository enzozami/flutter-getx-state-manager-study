import 'package:get/get.dart';
import './first_rebuild_controller.dart';

class FirstRebuildBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FirstRebuildController());
    }
}