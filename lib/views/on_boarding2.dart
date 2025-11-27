import 'package:cosmatics_app/views/play.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text('Skip',
        style: TextStyle(color: Color(0xff434C6D), fontSize: 18),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 160, left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_3.png',
            height: 300,
            width: 300,
            ),
                      SizedBox(height: 50,),
            Title(color: Color(0xff434C6D), child: Text('SEARCH & PICK',
            style: TextStyle(
              color: Color(0xff434C6D),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              ),
            ),
            ),
            SizedBox(height: 20,),
         Text('We have dedicated set of products and routines hand picked for every skin type.',
         textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                ),
            ),
            SizedBox(height: 30,),
                          IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayPage()));
                
              },
              icon: SvgPicture.asset('assets/svg_Icons/icon.svg',
              height: 60,
              width: 60,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
