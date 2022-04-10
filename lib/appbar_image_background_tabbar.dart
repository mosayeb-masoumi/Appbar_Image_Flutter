
import 'package:flutter/material.dart';

class AppbarImageBackground_Tabbar extends StatefulWidget {
  const AppbarImageBackground_Tabbar({Key? key}) : super(key: key);

  @override
  _AppbarImageBackground_TabbarState createState() => _AppbarImageBackground_TabbarState();
}

class _AppbarImageBackground_TabbarState extends State<AppbarImageBackground_Tabbar> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
        length: 4,
      child: Scaffold(

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

          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://media.threatpost.com/wp-content/uploads/sites/103/2019/09/26105755/fish-1.jpg") ,
                    fit: BoxFit.cover)
            ),
          ),


          elevation: 0,

          bottom: const TabBar(
            indicatorColor: Colors.white,
              indicatorWeight: 5,
              // isScrollable: true,
              tabs: [
                    Tab(icon: Icon(Icons.home), text: "home",),
                    Tab(icon: Icon(Icons.list_alt), text: "feed",),
                    Tab(icon: Icon(Icons.person), text: "profile",),
                    Tab(icon: Icon(Icons.settings), text: "settings",),
              ]),

        ),


        body: TabBarView(children: [
             buildPage ("home page"),
             buildPage("feed page"),
             buildPage("profile page"),
             buildPage("setting page"),
        ]),
      ),
    );
  }

  Widget buildPage (String text) {
    
    return Center(
      child: Text(text , style: TextStyle(color: Colors.red, fontSize: 20),),
    );
  }
}


