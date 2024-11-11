import 'package:flutter/material.dart';
import 'package:shrine/app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(height: 80.0),
            Column(
              children: [
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            const TextField(
              decoration: InputDecoration(
                filled: false,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                filled: false,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            _buildButtonBar(),
          ],
        ),
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  Widget _buildButtonBar() {
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      children: [
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('NEXT'),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: kShrineBrown900,
            backgroundColor: kShrinePink100,
            elevation: 8.0,
          ),
        ),
      ],
    );
  }
}
