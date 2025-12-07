import 'package:cosmatics_app/core/comeponents/app_input.dart';
import 'package:cosmatics_app/home/presentation/views/check_out.dart';
import 'package:cosmatics_app/views/auth/login.dart';
import 'package:cosmatics_app/views/auth/otp.dart';
import 'package:flutter/material.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13).copyWith(top: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Layer_1.png', height: 72, width: 77),
                SizedBox(height: 40),
                Text(
                  'Create Account',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 60),
                AppInput(label: 'Your Name'),
                SizedBox(height: 30),
                AppInput(label: 'Phone Number', withCuntryCode: true),
                SizedBox(height: 20),
                AppInput(
                  label: 'Create Your Password',
                  suffixIcon: 'assets/svg_Icons/visibility.svg',
                ),
                SizedBox(height: 20),
                AppInput(
                  label: 'Confirm Password',
                  suffixIcon: 'assets/svg_Icons/visibility_off.svg',
                ),
                SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Otp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD75D72),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    minimumSize: Size(268, 68),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff434C6D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: Text(
                        ' Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffD75D72),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
