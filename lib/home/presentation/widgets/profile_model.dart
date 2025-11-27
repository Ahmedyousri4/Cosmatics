
import 'package:cosmatics_app/home/data/model/profile.dart';
import 'package:cosmatics_app/home/presentation/views/check_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileModel extends StatelessWidget {
  ProfileModel({super.key});
  final List<ProfileList> categories = [
    ProfileList(
      name: "Edit Info",
      image: "assets/svg_Icons/edit.svg",
      color: Color(0xff434C6D),
    ),
    ProfileList(
      name: "order history",
      image: "assets/svg_Icons/history.svg",
      color: Color(0xff434C6D),
    ),
    ProfileList(
      name: "Wallet",
      image: "assets/svg_Icons/wallet.svg",
      color: Color(0xff434C6D),
    ),
    ProfileList(
      name: "Settings",
      image: "assets/svg_Icons/sitting.svg",
      color: Color(0xff434C6D),
    ),
    ProfileList(
      name: "Voucher",
      image: "assets/svg_Icons/voucher.svg",
      color: Color(0xff434C6D),
    ),
    ProfileList(
      name: "Logout",
      image: "assets/svg_Icons/logout.svg",
      color: Color(0xffCD0F0F),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(categories[index].image),
            ),
            Text(
              categories[index].name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: categories[index].color,
              ),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ],
        );
      },
    );
  }
}
