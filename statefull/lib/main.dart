import 'package:flutter/material.dart';
import 'package:statefull/screen_home.dart';

void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: ScreenHome(),
    );
  }
}
