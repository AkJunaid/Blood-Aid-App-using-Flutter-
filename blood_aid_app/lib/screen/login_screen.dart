import 'package:blood_aid_app/screen/signup.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

// ignore: camel_case_types
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

// ignore: camel_case_types
class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    bool hide = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Aid'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/logo.png',
            height: MediaQuery.of(context).size.height * .25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Welcome To Blood Aid",
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80.0, top: 20, bottom: 20),
            child: Text(
              "Please log in to your account ",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email address',
                hintText: 'Enter your email address',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_outlined),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    icon: Icon(hide ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              obscureText: hide,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const navbar()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text('Log In')),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Reset Password',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New user?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: const Text('Register here')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
