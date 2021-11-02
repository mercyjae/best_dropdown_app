
import 'package:flutter/material.dart ';


 class MyApp1 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp1> {
  String initialValue =  "Wooden CupBoard";
  var itemList = [

    "Wooden CupBoard",
    "Plastic CupBoard",
    "Ceramics CupBoard",
    "Rubber CupBoard",
    "Paper CupBoard",
    "Iron CupBoard",
    "Steel CupBoard",

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.purple,),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButton(
                isExpanded: true,
                iconEnabledColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 16),
                dropdownColor: Colors.purple,
                focusColor: Colors.black,
                value: initialValue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: itemList.map((String items) {
                  return DropdownMenuItem(value: items,
                      child: Text(items));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    initialValue = newValue.toString();
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}