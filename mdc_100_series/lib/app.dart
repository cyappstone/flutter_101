import 'package:flutter/material.dart';
import 'package:shrine/constrains.dart';
import 'package:shrine/navi.dart';
import 'package:shrine/ui_challenge.dart';

import 'home.dart';
import 'login.dart';

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/',
      routes: {
        '/constraint': (BuildContext context) => const ConstraintPage(),
        '/ui': (BuildContext context) => const UIChallenge(),
        '/login': (BuildContext context) => const LoginPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/': (BuildContext context) => const NaviMain(),
      },
      theme: _kShrineTheme,
    );
  }
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineBrown900,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kShrineBrown900,
      ),
    ),
  );
}

const kShrinePink50 = Color(0xFFFEEAE6);
const kShrinePink100 = Color(0xFFFEDBD0);
const kShrinePink300 = Color(0xFFFBB8AC);
const kShrinePink400 = Color(0xFFEAA4A4);

const kShrineBrown900 = Color(0xFF442B2D);

const kShrineErrorRed = Color(0xFFC5032B);

const kShrineSurfaceWhite = Color(0xFFFFFBFA);
const kShrineBackgroundWhite = Colors.white;
