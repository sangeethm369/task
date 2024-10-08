import 'package:flutter/material.dart';

class SinglecoffeeView extends StatefulWidget {
  final String img;
  final String imgname;
  const SinglecoffeeView(this.img,this.imgname, {super.key});

  @override
  State<SinglecoffeeView> createState() => _SinglecoffeeViewState();
}

class _SinglecoffeeViewState extends State<SinglecoffeeView> {
    int _value=0;
  void _increasing(){
  setState(() {
    _value++;
  });
  }
  void _decreaing(){
  setState(() {
    _value--;
  });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(widget.img,width: MediaQuery.of(context).size.width/1.2,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0,right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("BEST COFFEE",style: TextStyle(color: Colors.white38,letterSpacing: 3),),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Text(widget.imgname,style: const TextStyle(fontSize: 26,letterSpacing: 1,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          height: 60,
                         
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white.withOpacity(.2),
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                IconButton(onPressed: (){
                                 if(_value>0){_decreaing();}
                                }, icon: const Icon(Icons.remove),iconSize: 14,color: Colors.white,),
                                Text("$_value",style: const TextStyle(fontSize: 14,color: Colors.white),),
                                IconButton(onPressed: (){if(_value<10){_increasing();}}, icon: const Icon(Icons.add),iconSize: 14,color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text("\$${30*_value}",style: const TextStyle(fontSize: 18,color: Colors.white),)
                      ],
                    ),
                  ),
                  const Text("Coffee is amajor source of antitoxidants in the diet.It has many health benefits",style: TextStyle(color: Colors.white60,fontSize: 14,fontWeight: FontWeight.w400),),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Volume:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
                        SizedBox(width: 10,),
                        Text("60 ml",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), 
                          child: const Text("Add to Cart",style: TextStyle(color: Colors.white),),
                            ),
                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.favorite_border),
                          color: Colors.white,
                          style: IconButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.deepOrange),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}