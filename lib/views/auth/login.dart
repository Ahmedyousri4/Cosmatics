import 'package:cosmatics_app/core/comeponents/app_input.dart';
import 'package:cosmatics_app/views/auth/creat_account.dart';
import 'package:cosmatics_app/views/auth/forget_password.dart';
import 'package:cosmatics_app/views/auth/otp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13).copyWith(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login_img.png',
                  height: 227,
                  width: 287,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(height: 20),
                Text(
                  'Login Now',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Please enter the details below to continue',
                  style: TextStyle(
                    color: Color(0xff8E8EA9),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                AppInput(label: 'Phone Number', withCuntryCode: true),
                SizedBox(height: 10),
                AppInput(
                  label: 'Your Password',
                  suffixIcon: 'assets/svg_Icons/visibility.svg',
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()));
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xffD75D72),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD75D72),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    minimumSize: Size(268, 68),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 145),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     "Don't have an account?",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xff434C6D),
                       fontSize: 12,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatAccount()));
                       },
                       child: Text(
                         'Register',
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
