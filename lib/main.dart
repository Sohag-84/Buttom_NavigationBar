import 'package:buttom_navigation_bar/Four.dart';
import 'package:buttom_navigation_bar/One.dart';
import 'package:buttom_navigation_bar/Three.dart';
import 'package:buttom_navigation_bar/Two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  var currentPage = 0;

  final pages = const [
    One(),
    Two(),
    Three(),
    Four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Bottom navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(

         //selectedItemColor: Color(0x36ECFF05),
        // unselectedItemColor: Colors.blue,
        // showUnselectedLabels: true,
        // showSelectedLabels: false,

        currentIndex: currentPage,

        items:  const [
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.home),label: "Home"),

          BottomNavigationBarItem(
              icon: Icon(Icons.message),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        ],
        onTap: (index){
          setState(() {
            currentPage = index;
          });
        },
      ),
      body: pages[currentPage],
    );
  }
}


