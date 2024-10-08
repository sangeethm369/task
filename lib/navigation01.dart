import 'package:flutter/material.dart';
import 'package:task/homepg01.dart';

class Navigation01 extends StatefulWidget {
  const Navigation01({super.key});

  @override
  State<Navigation01> createState() => _Navigation01State();
}

class _Navigation01State extends State<Navigation01> {
  int _currentIndex=0;
  final tabs=[
    const Center(child: Homepg01()),
    const Center(child: Text("favorite")),
    const Center(child: Text("Notification")),
    const Center(child: Text("profile")),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        fixedColor: Colors.deepOrange,
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
      )
    );
  }
}