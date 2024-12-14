import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemsWidget extends StatelessWidget{
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio:0.75,
    children: [
      for(int i =1; i<5;i++)
      Container(
        padding: EdgeInsets.symmetric( horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 14, 14, 15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 67, 62, 62).withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            ),
            
          ]
        ),
        child: Column(
          children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "Singleitempage");
            },
            child: Container(
              margin: EdgeInsets.all(5),
              child: Image.asset("images/$i.png",
              width: 120,
              height: 110,
              fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("cheese Burger",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ),
          ),
           Container(
             
             child: Text("Hot Burger",
             style: TextStyle(
               fontSize: 15,
               
               color: Colors.white60,
             ),
             ),
           ),
           Padding(padding: EdgeInsets.symmetric(vertical: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$55",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              Icon(CupertinoIcons.cart_badge_plus, color: Colors.white, size: 27,)
            ],
           ),
           )

          
          ]
        ),
      )

    ],
    );
  }

}