
import 'package:flutter/material.dart';

class AppBarPage1 extends StatefulWidget {
  const AppBarPage1({Key? key}) : super(key: key);

  @override
  _AppBarPage1State createState() => _AppBarPage1State();
}

class _AppBarPage1State extends State<AppBarPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("nice app bar"),
        // centerTitle: true,
        leading: IconButton(
           icon: Icon(Icons.menu),
          onPressed: (){

          },),


        actions: [
          IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},),
          IconButton(icon: Icon(Icons.search), onPressed: (){},)
        ],

        // backgroundColor: Colors.greenAccent,

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green , Colors.red],
            begin: Alignment.bottomRight ,
            end: Alignment.topLeft),
          ),
        ),

      ),

    );
  }
}
