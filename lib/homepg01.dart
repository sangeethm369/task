import 'package:flutter/material.dart';
import 'package:task/coffee_cards.dart';

class Homepg01 extends StatefulWidget {
  const Homepg01({super.key});

  @override
  State<Homepg01> createState() => _Homepg01State();
}

class _Homepg01State extends State<Homepg01> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController=TabController(length: 3, vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.deepPurple,Colors.grey,Colors.purple])
              ),
              child: SizedBox(
                width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/coffee1.png"),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("User Name",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          ListTile(title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),leading: Icon(Icons.home),),
          ListTile(title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold)),leading: Icon(Icons.settings),),
          ListTile(title: Text("LogOut",style: TextStyle(fontWeight: FontWeight.bold)),leading: Icon(Icons.logout_outlined),),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder:(context) {
            return IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(), icon: const Icon(Icons.sort_rounded),color: Colors.white54,);}),
        actions: const [
          Icon(Icons.notifications,color: Colors.white54,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("It's a Great Day for Coffee",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),)),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(80, 80, 80, 80),
                hintText: "Find your coffee",
                hintStyle: TextStyle(color: Color.fromARGB(250, 80, 80, 80)),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none)
                ),
              TabBar(
                controller: _tabController,
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.white60,
                isScrollable: true,
                indicator: const UnderlineTabIndicator(borderSide: BorderSide(width: 2,color: Colors.deepOrange),insets: EdgeInsets.symmetric(horizontal: 16)),
                tabs: const [
                Tab(text: "Hot Coffe",),
                Tab(text: "Cold Coffe",),
                Tab(text: " Capicciuno",),
              ]),
              const SizedBox(height: 10,),
              Center(
                child: [
                  CoffeeCards(),
                  CoffeeCards(),
                  CoffeeCards(),
                ][_tabController.index],
              )
          ],
        ),
      ),
    );
  }
}