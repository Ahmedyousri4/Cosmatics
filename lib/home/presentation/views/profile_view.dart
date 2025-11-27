import 'package:cosmatics_app/home/presentation/widgets/profile_model.dart';
import 'package:flutter/material.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff434C6D).withAlpha(0),
                        Color(0xFFFFC4D6).withAlpha(200),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 145),
                  child: Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/girl.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              "Sara Samer Talaat",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff434C6D),
              ),
            ),
            ProfileModel(),
          ],
        ),
      ),
    );
  }
}
