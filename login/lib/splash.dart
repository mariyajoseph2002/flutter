import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class screensplash extends StatefulWidget {
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {
  @override
  void initState() {
    gotologin();
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  Image.asset('assets/images/sadness.jpeg',height: 300,),
      
      ),

    );
  }
  Future<void> gotologin() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
      return login();
    }));
  }
  Future<void> chechuserloggrdin() async{
    final _sharedprefs= await SharedPreferences.getInstance();
    final _userloggedin=_sharedprefs.getBool(save_keyname);
    if(_userloggedin==null || _userloggedin==false)
    {
      gotologin();
    }
    else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Home(email: 'email')));
    }
  }
}