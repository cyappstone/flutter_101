import 'package:get/get.dart';
import 'package:shrine/state/module/chat/views/bindings/chat_room_bindings.dart';
import 'package:shrine/state/module/chat/views/views/chat_room.dart';
import 'package:shrine/state/module/getview/bindings/get_view_lv2_bindings.dart';
import 'package:shrine/state/module/getview/views/get_view_lv2.dart';
import 'package:shrine/state/module/getview/views/getview_lv1.dart';
import 'package:shrine/state/module/home/get_home_view.dart';

part 'app_routes.dart';

class AppPage {
  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const GetHomeView(),
    ),
    GetPage(
      name: Routes.lv1,
      page: () => const GetViewLv1(),
    ),
    GetPage(
      name: Routes.lv2,
      page: () => const GetViewLv2(),
      binding: GetViewLv2Bindings(),
    ),
    GetPage(
      name: Routes.chatRoom,
      page: () => ChatRoom(),
      binding: ChatRoomBindings(),
    ),
  ];
}