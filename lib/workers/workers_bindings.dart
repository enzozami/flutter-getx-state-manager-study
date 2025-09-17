import 'package:get/get.dart';
import './workers_controller.dart';

class WorkersBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(WorkersController());
    }
}