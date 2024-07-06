import 'package:flutter/material.dart';
import 'package:otherui/account.dart';
import 'package:otherui/home.dart';
import 'package:otherui/search.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentselectedindex=0;
  final _pages=[
    hom(),
    search(),account()
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _pages[currentselectedindex], 
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentselectedindex,
      selectedItemColor: const Color.fromARGB(255, 198, 177, 169),
      onTap: (newindex){
        setState(() {
          currentselectedindex=newindex;
        });
      },
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),
      ],),
    );
  }
}