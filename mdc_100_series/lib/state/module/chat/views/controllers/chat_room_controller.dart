import 'package:get/get.dart';
import 'package:shrine/state/module/chat/views/views/chat_room.dart';

class ChatRoomController extends GetxController {
  final messageList = [].obs;

  void inputMessage(Msg message) {
    messageList.add(message);
  }
}