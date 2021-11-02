import 'package:bestdropdown/models/chair_model.dart';
import 'package:bestdropdown/screens/best_deal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewChair extends StatefulWidget {
   final ChairModel chairModel;
  final Function() press;
  const GridViewChair({Key? key,
    required this.chairModel,required this.press
  }) : super(key: key);

  @override
  _GridViewChairState createState() => _GridViewChairState();
}

class _GridViewChairState extends State<GridViewChair> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(height: 100,width: 120,
            decoration: BoxDecoration(color: Colors.grey,
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(widget.chairModel.image),),
        ),SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(widget.chairModel.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(widget.chairModel.size,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.purple),),
        ),
      ],),
    );
  }
}


class GridChair extends StatefulWidget {
  const GridChair({Key? key}) : super(key: key);

  @override
  _GridChairState createState() => _GridChairState();
}

class _GridChairState extends State<GridChair> {

  @override
  Widget build(BuildContext context) {
  return  Column(
    children: [
      Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap:true,
          itemCount: chair.length,
          itemBuilder: (context, index){
            return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BestDeal(chairModel: chair[index]),
              );
          }),
      ),
      Expanded(
        child: GridView.builder(itemCount: chair.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 2.0,crossAxisSpacing: 2.0),
            itemBuilder: (context,index) =>Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridViewChair(chairModel:chair[index],
                  press:(){}),
            )),
      ),
    ],
  );

  }
}