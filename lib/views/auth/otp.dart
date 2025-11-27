import 'package:cosmatics_app/views/auth/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  int seconds = 30; 
  Timer? timer;
  bool canResend = false; 

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    canResend = false;
    seconds = 30;

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          t.cancel();
          canResend = true;
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(13).copyWith(top: 60),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Layer_1.png',
                    height: 62,
                    width: 67,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Verify Code',
                    style: TextStyle(
                      color: Color(0xff434C6D),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 40),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'We just sent a 4-digit verification code to\n',
                          style: TextStyle(
                            color: Color(0xff434C6D),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '+20 1022658997.',
                          style: TextStyle(
                            color: Color(0xff434C6D),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Enter the code in the box\n below to continue.',
                          style: TextStyle(
                            color: Color(0xff434C6D),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 300),
                    child: Text(
                      'Edit The Number',
                      style: TextStyle(
                        color: Color(0xffD75D72),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                      right: 70,
                      bottom: 30,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 60,
                        fieldWidth: 55,
                        activeFillColor: Colors.white,
                        selectedFillColor: Colors.blue.shade50,
                        inactiveFillColor: Colors.grey.shade200,
                        activeColor: Color(0xffD75D72),
                        selectedColor: Color(0xffD75D72),
                        inactiveColor: Colors.grey,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      enableActiveFill: true,
                      onChanged: (value) {
                        print(value);
                      },
                      onCompleted: (value) {
                        print("Code Completed: $value");
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Didn't receive a code?",
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      canResend
                          ? TextButton(
                            onPressed: () {
                              print("Resend code tapped!");
                              startTimer(); // نعيد المؤقت
                            },
                            child: const Text(
                              "Resend",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffD75D72),
                              ),
                            ),
                          )
                          : Text(
                            "Resend code in $seconds s",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                    ],
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => SuccessDialog(),
                      );
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD75D72),
                      minimumSize: const Size(268, 68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
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
