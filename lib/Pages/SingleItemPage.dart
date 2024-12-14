import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widget/SingleItemNacBar.dart';

class SingleItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: SafeArea(child: 
      Padding(padding: EdgeInsets.only(top: 25,left: 15,right:15  ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:Icon(Icons.arrow_back,color: Colors.white,size: 32,) ,

              ),
              InkWell(
                onTap: () {
                  
                },
                child:Icon(CupertinoIcons.cart_fill  ,color: Colors.white,size: 32,) ,

              ),
             
            ],
          ),
              Padding(padding: EdgeInsets.symmetric(vertical:10 ),
              child: Image.asset("images/bg.png",
              height: MediaQuery.of(context).size.height /1.7,
              fit: BoxFit.cover,
              ),
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(padding: EdgeInsets.only(right:5 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hot & Fresh Burger", style:TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ) ,),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(CupertinoIcons.minus,
                              
                              size:20 ,
                              )
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("2", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ) ,),
                          SizedBox(width: 8,),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(CupertinoIcons.plus,
                              
                              size:20 ,
                              )
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                  ),
                  SizedBox(height:15 ,),
                  Text("We bring you the burger with cheese served with onion, cold drink and fries",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18
                  ),
                  )

                ],
              ),

        ],
      ),
      ),     
      ) ,
      bottomNavigationBar: SingleItemNacBar(),
    );
  }

}