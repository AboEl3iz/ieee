import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              "Sign in",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 15,
            ),
            Text(
              "to Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
             SizedBox(
              height: 7,
            ),
            Text(
              "Sign in with username or email and password to use your account ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 25,
            ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter your email"),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter your password"),
            ),
             SizedBox(
              height: 25,
            ),
            MaterialButton(
              height: 60,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
             SizedBox(
              height: 25,
            ),
            MaterialButton(
              height: 60,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: Colors.brown,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.facebook_rounded),
                  Text(
                    "Sign In with facebook",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
