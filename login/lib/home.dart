import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  final String email;
  const Home({super.key,required this.email});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome $email'),
      actions: [
      IconButton(onPressed: (){
        signout(context);
      }, icon: Icon(Icons.exit_to_app))
      ],
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(20),
      child: Center(child: /* ListView.separated(itemBuilder: (ctx,index){
        return ListTile(title: Text('activity $index'),);
      }, separatorBuilder: (ctx,index){
        return Divider();
      }, itemCount: 5) */
      ListView(children: [
        Container(color: Color.fromARGB(255, 199, 174, 203),height: 100,
          child: Center(child:  Text('welcome $email',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),),
         
             
        
      ],)
      
      
      ),
      ),      
      ),
    );
  }
  signout(BuildContext context) async{
    final _sharedprefs=await SharedPreferences.getInstance();
    _sharedprefs.clear();
    
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx)=>login()),(route)=>false);
  }
}