import 'package:flutter/material.dart';
class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              title:Text("Data info"),
            ),
            body:Center(
              child: ListView(
                  children:[
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                    SizedBox(height:80,),
                    Container(height:30,width:40,color:Colors.red,),
                  ]
              ),
            ),
            bottomNavigationBar:BottomNavigationBar(
              //currentIndex: index,
              //onTap:update,
              elevation: 50,
              type:BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              backgroundColor: Colors.lightGreen,
              iconSize: 40,
              //backgroundColor:Colors.lightBlueAccent,
              //fixedColor: Colors.lightBlueAccent,
              items:const<BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
                BottomNavigationBarItem(icon: Icon(Icons.call_made),label:"upload"),
                BottomNavigationBarItem(icon: Icon(Icons.call_received),label:"download"),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label:"settings"),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              elevation:50.0,
              onPressed:(){},child:Icon(Icons.add),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            )
        );
    }
}