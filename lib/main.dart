import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'list_builder.dart';
// import 'call_made.dart';
// import 'list_view.dart';
void main(){
  runApp(const builder());
}
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      // home:list(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index=0;
  //List pages=[HomePage(),call_made(),call_received(),settings()];
  void update(int val){
    setState(() {
      print(val);
      index=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              title:Text("data"),
            ),
            body:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:Container(
                          height:100,
                          width:400,
                          child:
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:Row(
                              children:[
                                SizedBox(width:30,),
                                Container(height:100,width:100,color:Colors.green,),
                                SizedBox(width:30,),
                                Container(height:100,width:100,color:Colors.green,),
                                SizedBox(width:30,),
                                Container(height:100,width:100,color:Colors.green,),
                                SizedBox(width:30,),
                                Container(height:100,width:100,color:Colors.green,),

                              ],
                            ),
                          )
                      ),
                    ),


                    SizedBox(height:30),
                    Container(
                      height:400,
                      width:400,
                      color:Colors.lightBlueAccent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children:[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(width:30,),
                                  Container(height:100,width:100,color: Colors.red,),
                                  SizedBox(width:30,),
                                  Container(height:100,width:100,color: Colors.red,),
                                  SizedBox(width:30,),
                                  Container(height:100,width:100,color: Colors.red,),
                                  SizedBox(width:30,),
                                  Container(height:100,width:100,color: Colors.red,),
                                ],
                              ),
                            ),
                            SizedBox(height:30,),
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child:Row(
                                    children: [
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:30,),
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child:Row(
                                    children: [
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:30,),
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child:Row(
                                    children: [
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                      SizedBox(width:30,),
                                      Container(height:100,width:100,color: Colors.red,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            // ],
            // ),

            //body:Center(child:Text("flutter development",style:TextStyle(fontSize:50),)),

            // bottomNavigationBar:BottomAppBar(
            //   color:Colors.blueAccent,
            //   shape:CircularNotchedRectangle(),
            //   child:Container(margin:EdgeInsets.only(
            //     left:12.0,right:12.0
            //   ),
            //   child:Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(onPressed: (){}, icon: Icon(Icons.home),),
            //       IconButton(onPressed: (){
            //         Navigator.pop(context);
            //       }, icon: Icon(Icons.call_made),),
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>call_made())),
            //       IconButton(onPressed: (){}, icon: Icon(Icons.call_received),),
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>call_received())),
            //       IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>settings())),
            //     ],
            //
            //   )
            //   ),
            // ),
            bottomNavigationBar:BottomNavigationBar(
              currentIndex: index,
              onTap:update,
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