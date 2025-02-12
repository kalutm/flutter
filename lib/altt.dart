import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('hello, world'),
          IconButton(
            icon: Icon(Icons.abc,size:50),
            onPressed: () {},
            color: Colors.amber,
            
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            //margin: EdgeInsets.all(10),
            child: Text('inside container')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.red[600],
        child: Text('click'),
      ),
    );
  }
}