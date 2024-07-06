
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:ScreenHome(),
    );
      
     
}
}
class ScreenHome extends StatefulWidget {
    ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
    final _textcontroller=TextEditingController();
    String _textdisplay='text to be displayed';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: 
      Padding(padding: EdgeInsets.all(20),
      child:Container(color: Colors.yellow,child: 
      Column(children: [
        TextField(controller: _textcontroller,
          decoration: 
        InputDecoration(border: OutlineInputBorder(),hintText: 'type here'
        ),
        ),
        ElevatedButton(onPressed: (){
          print(_textcontroller.text);
         setState(() {
           _textdisplay=_textcontroller.text;
         });
        }, child: Text('click here'),
        ),
        Text(_textdisplay)
      ],),
      ),
      ),
      ),
    );
    
  }
}