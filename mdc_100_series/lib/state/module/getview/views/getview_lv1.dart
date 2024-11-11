import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetViewLv1 extends StatefulWidget {
  const GetViewLv1({Key? key}) : super(key: key);


  @override
  State<GetViewLv1> createState() => _GetViewLv1State();
}

class _GetViewLv1State extends State<GetViewLv1> {

  var count = 0.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: Center(
        child: Obx(() => Text("$count")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => count++,
      ),
    );
  }
}