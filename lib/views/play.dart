import 'package:cosmatics_app/views/auth/login.dart';
import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          'Skip',
          style: TextStyle(color: Color(0xff434C6D), fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 160, left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_4.png', height: 300, width: 300),
            SizedBox(height: 60),
            Text(
              'PUCH NOTIFICATIONS',
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Allow notifications for new makeup & cosmetics offers.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
              },
              label: Text("Let's Started!"),
              icon: Icon(Icons.arrow_forward),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff434C6D),
                minimumSize: Size(300, 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
