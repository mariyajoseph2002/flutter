import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class login extends StatefulWidget {
   login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _textuser=TextEditingController();

  final _textpass=TextEditingController();

  bool _isdatamatched= true;

  final _formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(30),
      child:
       Container(
        color: Color.fromARGB(255, 170, 216, 237),
        child: Center(
          child: Form(key: _formkey,
            child: 
         Column(children: [
          Container(width: double.maxFinite, child:  Text('LOGIN',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),),
           TextFormField(controller: _textuser,validator: (value){
            if(value==null || value.isEmpty){
              return 'value is empty';
            }
            else{
              return null;
            }
           },
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'username'),),
           SizedBox(height: 20),
           TextFormField(obscureText: true,validator: (value){
            if(value==null || value.isEmpty){
              return 'value is empty';
            }
            else{
              return null;
            }
           },
            controller: _textpass, decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'password'),),
           SizedBox(height: 20),
           
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Visibility(
                visible: _isdatamatched,
                
                child: 
                Text('username and password not same',style: TextStyle(color: Colors.red),)),
               ElevatedButton.icon(onPressed: (){
                /* Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return Home(email: _textuser.text);
               
                })); */
                if(_formkey.currentState!.validate()){
                  cgecklogin(context);
                }
                
               
               },icon: Icon(Icons.check), label: Text('login')),
             ],
           )
           
        ],),
      ),
      ),
       ),
      ),
      ),
    );
  }

void cgecklogin(BuildContext context) async{
  final _username=_textuser.text;
  final _pass=_textpass.text;
  if(_username==_pass)
  {
    print('they match');
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1){
                  return Home(email: _textuser.text);
               
                }));

    final _sharedprefs=await SharedPreferences.getInstance();
    await _sharedprefs.setBool(save_keyname, true);
  }
  else{
    //snackbar
   /*  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(behavior: SnackBarBehavior.floating,backgroundColor: Colors.red,
        margin: EdgeInsets.all(10),
        content: Text('username and password not same')));


        //alertdialof
        showDialog(context: context, builder: (ctx){
          return AlertDialog(
            title: Text('errorrr'),
            content: Text('username and password not same'),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(ctx).pop();
              }, child: Text('close'))
            ],);
        });


        //show text
        setState(() {
          _isdatamatched=false;
        }); */



        print('does not match');
        
  }
}
}