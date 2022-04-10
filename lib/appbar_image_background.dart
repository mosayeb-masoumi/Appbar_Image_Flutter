
import 'package:flutter/material.dart';

class AppbarImageBackGround extends StatefulWidget {
  const AppbarImageBackGround({Key? key}) : super(key: key);

  @override
  _AppbarImageBackGroundState createState() => _AppbarImageBackGroundState();
}

class _AppbarImageBackGroundState extends State<AppbarImageBackGround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("nice app bar"),
        // centerTitle: true,
        // titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){

          },),


        actions: [
          IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},),
          IconButton(icon: Icon(Icons.search), onPressed: (){},)
        ],

        // backgroundColor: Colors.greenAccent,

          // "https://media.threatpost.com/wp-content/uploads/sites/103/2019/09/26105755/fish-1.jpg"
        flexibleSpace: Container(
          decoration: BoxDecoration(
           image: DecorationImage(
               image: NetworkImage("https://media.threatpost.com/wp-content/uploads/sites/103/2019/09/26105755/fish-1.jpg") ,
           fit: BoxFit.cover)
          ),
        ),

      ),

    );
  }
}
