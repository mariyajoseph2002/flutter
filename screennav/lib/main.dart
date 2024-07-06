import 'package:flutter/material.dart';


import 'package:screennav/screenhome1.dart';




 main()  {
  

  runApp(Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: screenone(),
      
      /* routes: {
        'screen_1': (ctx){
          return screenone();
        },
        'screen_2': (ctx){
          return screentwo();
        }
      }, */


    );
  }
}

