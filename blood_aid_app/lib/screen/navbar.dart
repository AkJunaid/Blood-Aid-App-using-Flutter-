import 'package:flutter/material.dart';
import 'blood_donation_screen.dart';
import 'blood_request.dart';
import 'login_screen.dart';

// ignore: camel_case_types
class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

// ignore: camel_case_types
class _navbarState extends State<navbar> {
  var _pages = [blooddonation(), loginscreen(), blood_requests()];
  int _selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selecteditem],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          selectedFontSize: 20,
          unselectedItemColor: Colors.white70,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add), label: 'Notification'),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Post',
            ),
          ],
          currentIndex: _selecteditem,
          onTap: (setValue) {
            setState(() {
              _selecteditem = setValue;
            });
          }),
    );
  }
}
