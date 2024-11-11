import 'package:get/get.dart';
import 'package:shrine/state/module/chat/views/controllers/chat_room_controller.dart';

class ChatRoomBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatRoomController>(() => ChatRoomController());
  }
}