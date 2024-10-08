import 'package:flutter/material.dart';
import 'package:task/homepgtheme01.dart';
import 'package:task/task01signup.dart';

class LoginPg01 extends StatefulWidget {
  const LoginPg01({super.key});

  @override
  State<LoginPg01> createState() => _LoginPg01State();
}

class _LoginPg01State extends State<LoginPg01> {
    final TextEditingController _email=TextEditingController();
    final TextEditingController _password=TextEditingController();

    final _formkey = GlobalKey<FormState>();
    final RegExp upperCase=RegExp(r'[A-Z]');
    final RegExp numberCase=RegExp(r'\d');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/coffee1.png"),fit: BoxFit.fill)
          ),
        child: Stack(
         children: [
            Positioned(
              top: 180,
              left: 0,
              right: 0,
              child: Container(
                
                width: double.maxFinite,
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(30, 30),
                  topRight: Radius.elliptical(30, 30)
                ),color:Colors.white,),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text("Welcome Back!",style: TextStyle(color: Colors.brown[800],fontSize: 28,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const Text("Don't have an account?",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPg01()));
                              },
                              style: TextButton.styleFrom(minimumSize: const Size(20, 10),maximumSize: const Size(70, 30)),
                              child: Text("Register",style: TextStyle(color: Colors.brown[900],decoration: TextDecoration.underline,fontSize: 10)),
                              )
                            ],
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Row(
                          children: [
                            Text("E mail"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))),
                          validator: (value) {
                            if(value==null||value.isEmpty){
                                return "Please Enter your Email";
                              }
                            if (!value.contains('@gmail.com')) {
                                return "Enter valid Email";
                              }
                              return null;
                            },
                          ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Row(
                          children: [
                            Text("Password"),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _password,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))),
                          validator: (value) {
                            if(value==null||value.isEmpty){
                              return "Please Enter your Password";
                              }
                            if (value.length<8||!upperCase.hasMatch(value)||!numberCase.hasMatch(value)) {
                              return "Enter Valid password";
                              }
                              return null;
                            },
                          ),
                      ),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(color: Colors.brown[900],decoration: TextDecoration.underline,fontSize: 12))),
                          ],
                        ),


                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: ElevatedButton(
                          onPressed: (){
                            if(_formkey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThemeHome01()));
                            }
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[900],minimumSize: const Size(200, 50)),
                          child: const Text("Log In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const Row(
                        children: [
                          Expanded(child: Divider(thickness: 1,)),
                          Text(" or "),
                          Expanded(child: Divider(thickness: 1,))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 20),
                        child: Row(children: [
                          const Spacer(),
                          ElevatedButton.icon(onPressed: (){}, label: const Text("email"),icon: const Icon(Icons.email),),
                          const Text(" "),
                          ElevatedButton.icon(onPressed: (){}, label: const Text("facebook"),icon: const Icon(Icons.facebook),),
                          const Spacer()
                        ],),
                      )
                    ],
                  ),
                ),
              ),
            )
         ],
        ),
      ),
    );
  }
}