import 'package:flutter/material.dart';
import 'package:mid_tabbar_flutter/editscreen.dart';

import 'homescreen.dart';
import 'profilescreen.dart';
import 'student.dart';


void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ) );
}
List<Student> list = [] ;
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  // final List<Student> list ;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text("TabBar Menu Example"),
        bottom:const TabBar(
            tabs:[
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
            ]
        ) ,
        ),
        body: TabBarView(
          children: [
            HomeScreen(list:list),
            EditScreen(list:list),
            ProfileScreen(list:list),
      
          ],
        ),
      ),
    );
  }
}
