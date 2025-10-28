import 'package:flutter/material.dart';
import 'package:flutter_learning/navigation/home_page.dart';
import 'package:flutter_learning/navigation/profile_page.dart';
import 'package:flutter_learning/navigation/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 1"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ]
      ),
      /*
      drawer: Drawer( //aside menu (can be used with stateless)
        backgroundColor: Colors.blue[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite)),

            ListTile(leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context); // close the aside
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
      */
    );
  }
}
