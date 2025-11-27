import 'package:cosmatics_app/home/presentation/views/check_out.dart';
import 'package:cosmatics_app/home/presentation/widgets/cart_detail.dart';
import 'package:cosmatics_app/home/presentation/widgets/prod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffD9D9D9),
        title: Row(
          children: [
            Text(
              'Cart',
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckOut()),
                );
              },
              icon: SvgPicture.asset('assets/svg_Icons/cart3.svg'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 15,
            end: 15,
            top: 20,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Expanded(child: CartDetail())],
          ),
        ),
      ),
    );
  }
}
