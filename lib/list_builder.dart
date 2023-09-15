import 'package:flutter/material.dart';
class builder extends StatefulWidget {
  const builder({super.key});

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  List<String>word=["hii","hello","hlo","hi","helo"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          // appBar: AppBar(title:Text("Data")),
            body:ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  return Container(height:30,width:20,color: Colors.red,child:Text(word[index]),);
                })
            )
        );
    }
}