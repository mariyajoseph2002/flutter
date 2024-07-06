import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: listview(),
    );
  }
}
class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('list view sample project'),
      ),
      body: SafeArea(child: 
      ListView.separated(itemBuilder: (ctx,index){
          return ListTile(title: Text('person $index'
          ),
          subtitle: Text('message $index'),
          leading: CircleAvatar(radius: 40,backgroundColor: Colors.green,
          backgroundImage: AssetImage('assets/images/sadness.jpeg'),
          ),
          trailing: Text('1$index:00 PM'),
          );
      }, separatorBuilder: (ctx,index){
        return Divider();

      }, itemCount: 20,)
      
      ,)
      );
    
  }
}