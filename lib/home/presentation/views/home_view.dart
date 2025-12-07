import 'package:cosmatics_app/core/comeponents/app_input.dart';
import 'package:cosmatics_app/home/presentation/views/cart_view.dart';
import 'package:cosmatics_app/home/presentation/views/category_view.dart';
import 'package:cosmatics_app/home/presentation/views/profile_view.dart';
import 'package:cosmatics_app/home/presentation/widgets/category_card.dart';
import 'package:cosmatics_app/home/presentation/widgets/nav_icon.dart';
import 'package:cosmatics_app/views/auth/creat_account.dart';
import 'package:cosmatics_app/views/auth/forget_password.dart';
import 'package:cosmatics_app/views/auth/login.dart';
import 'package:cosmatics_app/views/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  final images = [
    'assets/svg_Icons/home.svg',
    'assets/svg_Icons/category.svg',
    'assets/svg_Icons/cart2.svg',
    'assets/svg_Icons/profile.svg',
  ];
  final pages = [HomePage(), CategoryView(), CartView(), ProfileView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 65,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20,),
          decoration: BoxDecoration(
            color: Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                blurRadius: 6,
                offset: Offset(-4, -4),
                color: Color(0xff000000).withValues(alpha: .10),
              ),
              BoxShadow(
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(4, 4),
                color: Color(0xff000000).withValues(alpha: .10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              selectedFontSize: 0,
              type:BottomNavigationBarType.fixed ,

              backgroundColor: Color(0xffD9D9D9),
              unselectedFontSize: 0,
              items: List.generate(images.length, (index) {
                return BottomNavigationBarItem(
                  backgroundColor: Color(0xffD9D9D9),
                  icon: SvgPicture.asset(
                    images[index],
                    color:
                        selectedIndex == index
                            ? Color(0xffD75D72)
                            : Color(0xff8E8FA9),
                  ),
                  label: '',
                );
              }),
            ),
          ),
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.only(
        start: 15,
        end: 15,
        top: 49,
        bottom: kToolbarHeight + 50,
      ),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xffB3B3C1)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/prod_1.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Top rated products',
            style: TextStyle(
              color: Color(0xff434C6D),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          CategoryCard(),
        ],
      ),
    );
  }
}
