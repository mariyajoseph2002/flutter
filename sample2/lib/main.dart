import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
         
        home:HomeScreen(),
      );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(children: [
          Expanded(child: 
          Container(
          // width: double.infinity,height: double.infinity,
        color: Colors.pink,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text('hiii',
          textAlign:TextAlign.right,style:  
          TextStyle(color: Colors.black87
          ),
          ),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextButton(onPressed: (){
            print('text button clicked');
          }, child: Text('click me')),
          IconButton(onPressed:  (){
            print('text button clicked');}, icon: Icon(Icons.add_circle))
         ],),
          ElevatedButton(onPressed: (){
            print('elevated button clicked');
          }, child:Text('click me') )
        ],
        ),
        ),
          ),
          Expanded(child: 
        Container(
          // 
          decoration: BoxDecoration(color:Colors.indigo,borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.green,width: 5)),
          
        child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text('hiii',
          textAlign:TextAlign.right,style:  
          TextStyle(color: Colors.black87
          ),
          ),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextButton(onPressed: (){
            print('text button clicked');
          }, child: Text('click me')),
          IconButton(onPressed:  (){
            print('text button clicked');}, icon: Icon(Icons.add_circle))
         ],),
          ElevatedButton(onPressed: (){
            print('elevated button clicked');
          }, child:Text('click me') )
        ],
        ),
        ),
          ),
        ],)
      ),
    );
  }
}