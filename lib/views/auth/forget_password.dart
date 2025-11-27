import 'package:cosmatics_app/core/comeponents/app_input.dart';
import 'package:cosmatics_app/views/auth/otp.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13).copyWith(top: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Layer_1.png', height: 72, width: 77),
                  SizedBox(height: 50),
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Color(0xff434C6D),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Please enter your phone number below\n to recovery your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff8E8EA9),
                     fontSize: 14,
                      fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 50),
                  AppInput(label: 'Phone Number', withCuntryCode: true,),
                  SizedBox(height: 80),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Otp()));
                  },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xffD75D72),
                     minimumSize: Size(268, 68),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                   ),
                   child: Text('Next',
                   
                   style: TextStyle(color: Colors.white,
                   fontSize: 16,
                   fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
