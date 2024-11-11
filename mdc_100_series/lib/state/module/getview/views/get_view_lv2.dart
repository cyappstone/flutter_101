
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrine/state/module/getview/controllers/get_view_lv2_controller.dart';

class GetViewLv2 extends GetView<GetViewLv2Controller> {
  const GetViewLv2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: Center(
        child: Obx(() {
          return Text("${controller.count.value}");
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }

}