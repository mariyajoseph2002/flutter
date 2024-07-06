import 'package:flutter/material.dart';
import 'package:screennav/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';



class screenone extends StatelessWidget {
   screenone({super.key});
  final _textcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    getsaveddata(context);
    return Scaffold(
      body:SafeArea(child: Padding(padding: const EdgeInsets.all(10.0),
      child: 
        Column(children: [
          TextFormField(controller: _textcontroller,),
          ElevatedButton(onPressed: (){
            savedatatostore();
          }, child: Text('save value'))
        ],)
      ),
      ),
    );
  }
  Future<void> savedatatostore() async{
    print(_textcontroller.text);
    //shared preference
    final  sharedPreferences=await SharedPreferences.getInstance();
    //save value
    await sharedPreferences.setString('save_value',_textcontroller.text);
   
  }
  Future<void> getsaveddata(BuildContext context) async{
  final sharedpref=await SharedPreferences.getInstance();
  final savedvalue=sharedpref.getString('save_value');
  if(savedvalue!=null)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>screentwo()));
  }
}
}