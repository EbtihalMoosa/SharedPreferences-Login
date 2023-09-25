import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = "";
  String password = "";
  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email") ?? "";
    password = prefs.getString("password") ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // _getData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(margin: EdgeInsets.all(50), child: Text(email)),
            Text(password)
          ],
        ),
      ),
    );
  }
}
// class HomeScreen extends StatefulWidget {
//    HomeScreen({super.key});
//   String email = "";
//   String password = "";
//  _getData()
//  super.initState();


//   @override

//     _getData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//    email = prefs.getString("email")?? "";
//    password= prefs.getString("password")??"";
  
//   }
//   setSta
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {


//   @override
//   Widget build(BuildContext context) {
//     // _getData();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Home Screen",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(children: [
//         // Text(email),
//         // Text(password),
//       ],

//       ),
//     );
//   }
// }
