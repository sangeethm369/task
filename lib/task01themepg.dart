import 'package:flutter/material.dart';
import 'package:task/task01loginpg.dart';

class ThemePg1 extends StatefulWidget {
  const ThemePg1({super.key});

  @override
  State<ThemePg1> createState() => _ThemePg1State();
}

class _ThemePg1State extends State<ThemePg1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/coffee1.png"),fit: BoxFit.fill)
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            right: 15,
            child: SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text("Coffee Shop",style: TextStyle(color: Colors.brown[900],fontSize: 32,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  ),
                  Text("Coffee is the common man's gold, ",textAlign: TextAlign.center,style: TextStyle(color: Colors.brown[700])),
                  Text("and like gold",textAlign: TextAlign.center,style: TextStyle(color: Colors.brown[700])),
                  Text(", it brings to every person the feeling of luxury and nobility.",style: TextStyle(color: Colors.brown[700]),textAlign: TextAlign.center,),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPg01()));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: const Size(200, 50)), 
                      child: Text("Get Started",style: TextStyle(color: Colors.brown[900],fontWeight: FontWeight.bold)),
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