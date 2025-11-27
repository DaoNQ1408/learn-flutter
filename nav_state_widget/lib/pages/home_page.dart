import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home Page")),
      // appBar: AppBar(title: Text("Home Page")),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     // home
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     // profile
      //     BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'First'),
      //     // settings
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      //   ],
      // ),

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
    );
  }
}
