import 'package:flutter/material.dart';
import 'package:ilsottosopra3ccaputo/home_screen.dart';
import 'package:ilsottosopra3ccaputo/impostazioni_screen.dart';
import 'package:ilsottosopra3ccaputo/preferiti_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    SettingsScreen(),
      ];

  void chooseIndex(int index) {
      setState(() {
        selectedIndex = index;
      });

   }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: chooseIndex,
          items: const[
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.favorite),label: "Preferiti"),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Impostazioni"),
          ]
        ),
      body: pages.elementAt(selectedIndex),
      drawer: const Drawer(),
      appBar: AppBar(

        iconTheme: const IconThemeData(color: Colors.black) ,
        title: Center(child: Image.asset('lib/assets/logo.png', width: 200,)),
        backgroundColor: Colors.white,
        actions: const[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.black,)),
          ),
        ],
      ),
    );
  }
}