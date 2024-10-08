import 'package:flutter/material.dart';
import 'package:task/navigation01.dart';

class ThemeHome01 extends StatefulWidget {
  const ThemeHome01({super.key});

  @override
  State<ThemeHome01> createState() => _ThemeHome01State();
}

class _ThemeHome01State extends State<ThemeHome01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/wallpaper.jpg"),fit: BoxFit.fill)
            ),
          ),
          const Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Text("Coffee Shop",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
          Positioned(
            bottom: 20,
            left: 15,
            right: 15,
            child: SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text("Feeling Low? Take a Sip of Coffee",style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Navigation01()));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(200, 50)), 
                      child: const Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}