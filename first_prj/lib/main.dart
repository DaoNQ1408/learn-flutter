import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static List names = ["Mitch", "Sharon", "Vince"];

  void userTapped() {
    print("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   backgroundColor: Colors.deepPurple[200],
      //   appBar: AppBar(
      //     backgroundColor: Colors.deepPurple,
      //     leading: Icon(Icons.menu),
      //     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      //     title: Center(
      //       child: Text(
      //         "My App Bar",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ),
      //   body: GridView.builder(
      //     itemCount: 64,
      //     gridDelegate:
      //         // how many grid in each row
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      //     itemBuilder: (context, index) =>
      //         Container(color: Colors.deepOrange, margin: EdgeInsets.all(2)),
      //   ),
      // ),
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(child: Text("tap me")),
            ),
          ),
        ),
      ),
    );
  }
}
