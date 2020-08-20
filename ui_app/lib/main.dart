import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,


      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('UI APP'), titleSpacing: 50, centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        ],

      ),



      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center( child: Text('Mon menu',style: TextStyle(fontSize: 24,),),),

              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.only(bottomLeft:Radius.circular(90)),
                

              ),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail,color: Colors.amber,),
              title: Text('Profil',style: TextStyle(fontSize: 20.0),),
              trailing: IconButton(
                color: Colors.amber,
                  icon: (Icon(Icons.navigate_next)),
                  onPressed: (){

              }),
              onTap: (){

              },
            ),
            ListTile(
                leading: Icon(Icons.video_library,color: Colors.amber,),
                title: Text('Toutes les videos',style: TextStyle(fontSize: 20.0,letterSpacing: 1.5),),
                trailing: IconButton(
                    color: Colors.amber,
                    icon: (Icon(Icons.navigate_next)),
                    onPressed: (){

                    }),
              onTap: (){

              },
            ),
            ListTile(

                leading: Icon(Icons.favorite,color: Colors.amber,),
                title: Text('Likes',style: TextStyle(fontSize: 20.0),),
                trailing: IconButton(
                    color: Colors.amber,
                    icon: (Icon(Icons.navigate_next)),
                    onPressed: (){

                    }),
              onTap: (){

              },
            ),

          ],
        ),

      ),
    );


  }

}
class CircularButton extends StatelessWidget {

  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton({this.color, this.width, this.height, this.icon, this.onClick});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color,shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon,enableFeedback: true, onPressed: onClick),
    );
  }
}