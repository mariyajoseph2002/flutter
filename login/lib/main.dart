import 'package:flutter/material.dart';

import 'package:login/splash.dart';


const save_keyname='userloggedin';
void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: screensplash()
    );
  }
}