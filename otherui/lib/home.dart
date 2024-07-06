import 'package:flutter/material.dart';

class hom extends StatelessWidget {
   hom({super.key});
  final _list=[
    'apple','orange','avocado'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: DropdownButtonFormField(onChanged: (value){
        print(value);
      },hint: Text('select a fruit'),
      items:  _list.map((e){
        return DropdownMenuItem(value: e,
          child: Text(e));
      }).toList()

      ,),),
    );
  }
}