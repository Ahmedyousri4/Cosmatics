import 'package:cosmatics_app/views/on_boarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          'Skip',
          style: TextStyle(color: Color(0xff434C6D), fontSize: 18),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo_2.png'),
                height: 300,
                width: 300,
              ),
              SizedBox(height: 50),
              Text(
                'WELCOME!',
                style: TextStyle(
                  color: Color(0xff434C6D),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 280,
                child: Text(
                  'Makeup has the power to transform your mood and empowers you to be a more confident person',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 30),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoarding2(),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  'assets/svg_Icons/icon.svg',
                  height: 60,
                  width: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
