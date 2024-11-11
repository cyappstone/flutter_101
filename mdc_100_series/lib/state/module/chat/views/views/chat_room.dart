import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrine/state/module/chat/views/controllers/chat_room_controller.dart';

class Msg {
  bool isLeft;
  String msg = '';

  Msg({this.isLeft = false, required this.msg});
}

class ChatRoom extends GetView<ChatRoomController> {
  ChatRoom({Key? key}) : super(key: key);

  //color
  final TextStyle _titleTextStyle = const TextStyle(color: Colors.white, fontSize: 18.0);
  final Color blackColor = const Color(0xff19191b);
  final Color greyColor = const Color(0xff8f8f8f);

  final Color separatorColor = const Color(0xff272c35);
  static const Color gradientColorStart = Color(0xff00b6f3);
  static const Color gradientColorEnd = Color(0xff0184dc);
  final Gradient fabGradient = const LinearGradient(
      colors: [gradientColorStart, gradientColorEnd], begin: Alignment.topLeft, end: Alignment.bottomRight);

  //component
  TextEditingController textFieldController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  //msg
  final List _msgList = [];

  /// * 需求
  /// 1，將聊天室改為異步更新版本
  /// 2，封裝訊息處理功能(msg_bloc)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: _buildAppbar(context),
      body: Column(
        children: [
          Flexible(child: _buildMessageList(context)),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    controller: textFieldController,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      hintText: 'input_message_hint'.tr,
                      hintStyle: TextStyle(
                        color: greyColor,
                      ),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          borderSide: BorderSide.none),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      filled: true,
                      fillColor: separatorColor,
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.face),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(gradient: fabGradient, shape: BoxShape.circle),
                    child: IconButton(
                      icon: const Icon(
                        Icons.send,
                        size: 20,
                      ),
                      onPressed: () {
                        if (textFieldController.text.isEmpty) return;

                        _updateList(Msg(isLeft: false, msg: textFieldController.text));
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  _updateList(Msg msg) {
    controller.inputMessage(msg);
    _moveToBottom();
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.white,
      ),
      centerTitle: true,
      title: Text(
        'chat_room_title'.tr,
        style: _titleTextStyle,
      ),
    );
  }

  //移至底部
  void _moveToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  //========================================
  //=== 建立聊天室
  //========================================
  _buildMessageList(BuildContext context) {

    return Obx(() {
      final list = controller.messageList;
        return ListView.builder(
          controller: _scrollController,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return _buildMessageItem(list[index]);
          });
    });
  }

  _buildMessageItem(Msg msg) {
    return Column(
      children: [
        Bubble(
          margin: const BubbleEdges.only(top: 10),
          nip: msg.isLeft ? BubbleNip.leftTop : BubbleNip.rightTop,
          alignment: Alignment.topRight,
          color: const Color.fromRGBO(225, 255, 199, 1.0),
          child: Text(msg.msg, textAlign: TextAlign.right),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
