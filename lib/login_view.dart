import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final keyform = GlobalKey<FormState>();
TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: keyform,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "enter your email"),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: _password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter your password"),
              ),
              const SizedBox(
                height: 25,
              ),
              MaterialButton(
                height: 60,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.blue,
                onPressed: () {
                  if (keyform.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => const Dialog(
                        
                        child: SizedBox(height: 100,child: Center(child: Text("success")) ,),
                      ),
                    );
                  }
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MaterialButton(
                height: 60,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.brown,
                onPressed: () {},
                child: const Row(
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
        ),
      )),
    );
  }
}
