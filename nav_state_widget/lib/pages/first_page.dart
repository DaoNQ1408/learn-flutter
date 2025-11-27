import 'package:first_prj/pages/home_page.dart';
import 'package:first_prj/pages/profile_page.dart';
import 'package:first_prj/pages/setting_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // keep track of the current page to display
  int _selectedIndex = 0;

  // method to update the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), ProfilePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          // settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.red[200],
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Icon(Icons.face, size: 48)),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("HOME"),
      //         onTap: () {
      //           Navigator.pop(context); // pop the drawer first
      //           Navigator.pushNamed(context, '/home');
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("SETTING"),
      //         onTap: () {
      //           Navigator.pop(context); // pop the drawer first
      //           Navigator.pushNamed(context, '/setting');
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.pages),
      //         title: Text("FIRST"),
      //         onTap: () {
      //           Navigator.pop(context); // pop the drawer first
      //           Navigator.pushNamed(context, '/firstpage');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to second page"),
      //     onPressed: () {
      //       // navigation
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => SecondPage()),
      //       // );
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
