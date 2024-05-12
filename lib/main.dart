import 'package:flutter/material.dart';
import 'package:instar/screen/first_screen.dart';
import 'package:instar/screen/second_screen.dart';
import 'package:instar/screen/third_screen.dart';
import 'package:instar/screen/fourth_screen.dart';
import 'package:instar/screen/fifth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
    Tab5Screen(),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          title: Container(
              child: Image.asset('assets/logo.png', width:120)
          ),
          actions: [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 12,
            ),
            Icon(Icons.send),
            SizedBox(
              width: 10,
            ),
            ],
           ),
          body: Center(
            child: Column(
              children: [
                _screens[_selectedIndex],
                Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/sleep.jpeg',
                          width: 400,
                          height: 400,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home) , label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.plus_one_outlined), label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.movie_filter), label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
        ],
      ),
     ),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 2 content'),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 3 content'),
    );
  }
}

class Tab4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 4 content'),
    );
  }
}

class Tab5Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 5 content'),
    );
  }
}



