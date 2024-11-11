import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrine/state/routes/app_pages.dart';

class GetHomeView extends StatelessWidget {
  const GetHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('getx_home'.tr)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: const Text('GetView Lv1'),
                  onTap: () {
                    Get.toNamed(Routes.lv1);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('GetView Lv2'),
                  onTap: () {
                    Get.toNamed(Routes.lv2);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Chat Room'),
                  onTap: () {
                    Get.toNamed(Routes.chatRoom);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
