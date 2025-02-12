import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:MyWidget(),
    ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(
        'THE GOAT',
        style:TextStyle(
          color:const Color(0xff000000),
          fontSize:50,
          fontWeight: FontWeight.w400,
          fontFamily: "Merriweather"
        )
        ),
      centerTitle: true,
      backgroundColor:const Color(0xff880E4F)
    ),
    body: Center ( 
      child: FilledButton.icon(onPressed: (){print("alarm turned off");}, label: Text("turn me off"),icon:Icon(Icons.alarm))
      ),
    floatingActionButton: FloatingActionButton(onPressed: () {},
    backgroundColor:const Color(0xffE6EE9C),
    child: Text("messiiiii")
    ),
  );
  }
}