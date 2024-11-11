
import 'package:flutter/material.dart';

class NaviMain extends StatelessWidget {
  const NaviMain({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('UI Challenge'),
                  onTap: () {
                    Navigator.pushNamed(context, '/ui');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Constraints'),
                  onTap: () {
                    Navigator.pushNamed(context, '/constraint');
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