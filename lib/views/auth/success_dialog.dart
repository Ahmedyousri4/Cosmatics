import 'package:cosmatics_app/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessDialog extends StatefulWidget {
  const SuccessDialog({super.key});

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(13).copyWith(top: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/lotties/Success.json',
                repeat: true,
                height: 200,
                width: 200,
                delegates: LottieDelegates(
                  values: [
                    ValueDelegate.color(const ['**'], value: Color(0xffD75D72)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Account Activated!',
                style: TextStyle(
                  color: Color(0xff434C6D),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                'Congratulations! Your account has been successfully activated',
                style: TextStyle(
                  color: Color(0xff8E8EA9),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffD75D72),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  minimumSize: Size(100, 68),
                ),
                child: Text(
                  'Go to home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
