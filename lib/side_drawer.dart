import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
        UserAccountsDrawerHeader(
            otherAccountsPictures: [Icon(Icons.home,color: Colors.white,),Icon(Icons.search,color: Colors.white,)],
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image 1.png",),),
            accountName:Text( "Arowolo Joshua Olamide"),
            accountEmail: Text("arowolojoshuaO@gmail.com"),
          decoration: BoxDecoration(color: Colors.purple),),
        ListTile(title: Text("Home",),leading: Icon(Icons.home)),
        ListTile(title: Text("About us",),leading: Icon(Icons.info)),
        ListTile(title: Text("Contact us",),leading: Icon(Icons.call)),
        ListTile(title: Text("Settings",),leading: Icon(Icons.settings)),
    ],),),
      ),);
  }
}
