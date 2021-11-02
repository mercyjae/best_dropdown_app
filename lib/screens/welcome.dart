import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<String> fruits =["Apple","Banana","Watermelon","Mango","Pear",'Lemon',"Orange"];
  String selectedFruit = "Apple";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
           DropdownButton(
             dropdownColor: Colors.blue,
            hint: Text("Select fruit"),
            value: selectedFruit,
            items: fruits.map((e) {
              return
                DropdownMenuItem(child: Text(e),
                  value: fruits,);
            }).toList(),
            onChanged: (newValue){
              setState(() {
                selectedFruit= newValue.toString();
              });
            },
          ),
          // Container(
          //   child: Center(
          //     child: Text("Tab 1: WELCOME",
          //       style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
          //   ),
          // ),
        ],
      ),
    );
  }
}