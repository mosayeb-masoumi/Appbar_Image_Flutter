
import 'package:appbar_flutter/app_bar_page1.dart';
import 'package:appbar_flutter/appbar_image_background_tabbar.dart';
import 'package:flutter/material.dart';


import 'appbar_image_background.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  _AppbarPageState createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nice app bar"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            RaisedButton(
                child: Text("appBar gradient"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBarPage1()),);
                }),

            SizedBox(height: 10,),
            RaisedButton(
                child: Text("appBar Image background"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AppbarImageBackGround()),);

                }),

            SizedBox(height: 10,),
            RaisedButton(
                child: Text("appBar Image background with tabbar"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AppbarImageBackground_Tabbar()),);
                }),
          ],
        ),
      ) ,
    );
  }
}
