import 'package:get/get.dart';
import './get_builder_controller.dart';

class GetBuilderBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(GetBuilderController());
    }
}