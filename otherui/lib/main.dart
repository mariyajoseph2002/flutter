import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otherui/screenhome.dart';



void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: home()
    );
  }

}
class ScreenHome extends StatelessWidget {
   ScreenHome({super.key});


  ValueNotifier<int> _counter=ValueNotifier(0);
  void _incrementcounter(){
    _counter.value=_counter.value+1;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: 
        <Widget>[
          const Text('u have clicked this many times'), 
          ValueListenableBuilder(valueListenable: _counter, 
      builder: (BuildContext context, int newvalue,Widget? child)
      {
        return Text('$newvalue',style: Theme.of(context).textTheme.headlineSmall,
        );

      }),
      ],
      ),),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),onPressed: (){
          showbottomsheet(context);
        },
        ),
    );
  }


  //bottomsheet
  Future<void> showbottomsheet(BuildContext ctx) async{
    showModalBottomSheet(context: ctx, builder: (ctx1){
      return Container(
        width: double.infinity,
        height: 500,
        color: Colors.white24,
        child: ListView(children: [
          
          Text('title'),
          ElevatedButton(onPressed: (){
            Navigator.of(ctx1).pop();
          }, child: Text('close'))
        ],),
      );
    });
  }
}