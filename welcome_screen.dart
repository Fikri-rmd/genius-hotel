import 'package:firebase_auth101/entry_app.dart';
import 'package:firebase_auth101/screens/login_screen.dart';
import 'package:firebase_auth101/screens/signup_screen.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 130,
              width: 180,
            ),
            const SizedBox(height: 40),
            CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
            ),
            CustomizedButton(
              buttonText: "Home Screen",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const EntryApp()));
              },
            ),
            const SizedBox(height: 20),
           const Padding(
              padding:  EdgeInsets.all(10.0),
              child: Text(
                "Continue as a Guest",
                style: TextStyle(color: Color.fromARGB(255, 255, 0, 0), fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
