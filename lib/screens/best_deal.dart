import 'package:bestdropdown/models/chair_model.dart';
import 'package:flutter/material.dart';

class BestDeal extends StatefulWidget {
  final ChairModel chairModel;
  const BestDeal({Key? key,
    required this.chairModel
  }) : super(key: key);

  @override
  _BestDealState createState() => _BestDealState();
}

class _BestDealState extends State<BestDeal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: Colors.grey.shade300)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child:
                  Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    child: Center(
                      child: Text(widget.chairModel.percent,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                      ), ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(widget.chairModel.image),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.chairModel.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.chairModel.description,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(widget.chairModel.price.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
