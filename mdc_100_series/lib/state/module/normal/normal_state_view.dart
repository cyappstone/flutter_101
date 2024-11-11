import 'package:flutter/material.dart';

class NormalStatefulView extends StatefulWidget {
  const NormalStatefulView({Key? key}) : super(key: key);

  @override
  State<NormalStatefulView> createState() => _NormalStatefulViewState();
}

class _NormalStatefulViewState extends State<NormalStatefulView> {
  var count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: Center(
        child: Text("$count"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
