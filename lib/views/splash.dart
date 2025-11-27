import 'package:cosmatics_app/views/on_boarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashViewState();
}

class _SplashViewState extends State<Splash> {
  @override
  void initState() {
    redirect();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/Layer_1.png'),
                width: 200,
                height: 200,
              ),
              Image(image: AssetImage('assets/images/logo_1.png'),
                height: 50,
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => const OnBoarding()),
    );
  }
}
