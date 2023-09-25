import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thurs/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {
  //SharedPreferences

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 60,
              margin: EdgeInsets.only(top: 30),
              child: TextFormField(
                controller: emailController,
                maxLines: 5,
                minLines: 1,
                maxLength: 50,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.person),
                    // hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              width: 390,
              height: 60,
              margin: EdgeInsets.only(top: 30),
              child: TextFormField(
                controller: passwordController,
                maxLines: 5,
                minLines: 1,
                maxLength: 10,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.password),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                //SharedPreferences
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("email", emailController.text);
                prefs.setString("password", passwordController.text);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
