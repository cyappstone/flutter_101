
import 'package:get/get.dart';
import 'package:shrine/state/module/getview/controllers/get_view_lv2_controller.dart';

class GetViewLv2Bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetViewLv2Controller>(() => GetViewLv2Controller());
  }
}