import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widget/HomeNavBar.dart';
import 'package:flutter_application_5/Widget/ItemsWidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
              child: Row(
               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.sort_rounded, color: Colors.white,size: 35,),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.search, color: Colors.white,size: 35,),
                  ),
                ],
              ),
              ),
              SizedBox(height: 30,),
              
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Hot & Fast Food",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              ),
      
      
              ),
              
               Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Delieveris on Time",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
      
              SizedBox(height: 10,),
              TabBar(isScrollable: false,
              
              
              labelStyle: TextStyle(fontSize: 20),
              labelPadding: EdgeInsets.symmetric(horizontal: 15),
              tabs: [ 
               Tab(text:"Burger"),
               Tab(text:"Pizza"), 
               Tab(text:"Cheese"), 
               Tab(text:"Pasta"), 
                ],
              
              ),
              SizedBox(height: 8,),
              Flexible(
                flex: 1,
                child: 
              TabBarView(children: [
              ItemsWidget(),
              ItemsWidget(),
              ItemsWidget(),
              ItemsWidget(),
              ]
              ),
              )
            ],
          ) ,
          )
          ),
          bottomNavigationBar: HomeNavBar(),
      ),
    );
  }


}