import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,),
      body: Center(child: Text(_counter.toString())),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),onPressed: (){
          print(_counter);
          setState(() {
             _counter=_counter+1;
            
          });
         


        },
        ),
    );
  }
}