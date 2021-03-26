import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contact_app/contact_Screen/contact_view.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
           title: Text("Contacts",
           style: TextStyle(
             color: Colors.black
           ),),
          actions: [

            PopupMenuButton(
              icon: Icon(Icons.more_vert,color: Colors.black,),
              itemBuilder: (context) {
              return [

              PopupMenuItem(

                  child:Text("Settings",
                  style: TextStyle(
                    color: Colors.black
                  ),)),
              ];
            },)

          ],
        ),
        body:ContactList()


      ),
    );
  }
}
