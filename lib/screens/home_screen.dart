import 'package:bestdropdown/dropdown.dart';
import 'package:bestdropdown/screens/gridview_chair.dart';
import 'package:bestdropdown/screens/welcome.dart';
import 'package:bestdropdown/side_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 5,
      child: Scaffold(
        appBar:AppBar(backgroundColor: Colors.purple,
          title: Text("WELCOME",style:TextStyle(fontSize: 25,
            fontWeight:FontWeight.bold,),),
          bottom: TabBar(labelStyle:
          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(text: "Chair",),
              Tab(text: "Cupboard",),
              Tab(text: "Bed",),
              Tab(text: "Tables",),
              Tab(text: "Fan",),
            ],),),

        drawer:SideDrawer() ,
        body: TabBarView(children: [
          GridChair(),
           MyApp1(),
          //Center(child: Text("Text 2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),)),
          Center(child: Text("Text 3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),)),
          Center(child: Text("Text 5",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),)),
          Center(child: Text("Text 4",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),)),

        ],),),
    );
  }
}
