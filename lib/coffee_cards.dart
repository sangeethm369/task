import 'package:flutter/material.dart';
import 'package:task/singlecoffee.dart';

class CoffeeCards extends StatelessWidget {
  
  final List<String>image=[
    "assets/images/Americano.jpeg",
    // "assets/images/Black Coffee.png",
    "assets/images/Cappuccino.jpg",
    // "assets/images/Cold Coffee.png",
    "assets/images/Espresso.jpg",
    // "assets/images/Espresso1.png",
    "assets/images/Latte.jpg",
    // "assets/images/Latte1.png",
    "assets/images/Macchiato.jpg"
  ];
  final List<String>imgname=[
    "Americano",
    // "Black Coffee",
    "Cappuccino",
    // "Cold Coffee",
    "Espresso",
    // "Espresso",
    "Latte",
    // "Latte",
    "Macchiato"
  ];

  CoffeeCards({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i=0;i<image.length;i++)
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF212325),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5
              )
            ]
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SinglecoffeeView(image[i],imgname[i])));
                  },
                  child: Image.asset(image[i],width: 120,height: 100,fit: BoxFit.contain,),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 5,),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(imgname[i],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                      const Text("Best Coffee",style: TextStyle(fontSize: 12,color: Colors.white60),),
            
                    ],
                  ),
                ),),
                Padding(padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("\$30",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                    Container(padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Icon(Icons.add,size: 16,),
                    )
                  ],
                ),
                )
              ],
            ),
          ),
        )
      ],

    );
  }
}