import 'package:flutter/material.dart';

class screentwo extends StatelessWidget {
  

  const screentwo({super.key,});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(child: 
      Column(children: [
        // Text('screen2'),
        // ElevatedButton(onPressed: (){
        //   Navigator.of(context).pop();
        // }, 
       Text('value found'),
      ],
      ),
      )
    );
  }
}