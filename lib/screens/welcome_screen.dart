import 'home_screen.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to QR Generator',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: appBlue,
                padding: EdgeInsets.symmetric(
                    vertical: 15, horizontal: 65), // Add some vertical padding
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Icon(
                Icons.qr_code,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
