import 'dart:ui';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          'Check Out',
          style: TextStyle(
            color: Color(0xff434C6D),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 63, 200, 205).withAlpha(40),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 24,
              top: 20,
              bottom: 20,
              end: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery to',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xff73B9BB)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(
                            start: 12,
                            end: 10,
                            top: 12,
                            bottom: 12,
                          ),
                          height: 70,
                          width: 100,
                          child: GoogleMap(
                            zoomControlsEnabled: false,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(31.037933, 31.381523),
                              zoom: 15,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Home",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff434C6D),
                            ),
                            children: [
                              TextSpan(
                                text: "\nMansoura, 14 Porsaid St",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff8E8EA9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/svg_Icons/down.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    margin: EdgeInsets.only(top: 20, bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xff73B9BB)),
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Image.asset(('assets/images/visa.png')),
                        suffixIcon: SvgPicture.asset(
                          'assets/svg_Icons/down.svg',
                          fit: BoxFit.scaleDown,
                          height: 30,
                          width: 30,
                        ),
                        contentPadding: EdgeInsetsDirectional.only(
                          top: 18,
                          bottom: 18,
                          start: 12,
                          end: 12,
                        ),
                        hintText: '**** **** **** 2896',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff434C6D),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 70,
                    width: 350,
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xff73B9BB)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 12),
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: Image.asset(
                            ('assets/images/voucher.png'),
                          ),
                          suffixIcon: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              iconSize: 20,
                              minimumSize: Size(100, 0),
                              backgroundColor: Color(0xffD75D72),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          contentPadding: EdgeInsetsDirectional.only(
                            top: 25,
                            bottom: 25,
                            start: 8,
                          ),
                          hintText: 'Add vaucher',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff434C6D),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashGapLength: 6,
                  dashLength: 10,
                  dashColor: Color(0xff434C6D),
                ),
                SizedBox(height: 30),
                Text(
                  '- REVIEW PAYMENT',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'PAYMENT SUMMARY',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '16.100 EGP',
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SHIPPING FEES',
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'TO BE CALCULATED',
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xff73B9BB),
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TOTAL + VAT',
                      style: TextStyle(
                        color: Color(0xff434C6D),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '16.100 EGP',
                      style: TextStyle(
                        color: Color(0xff434C6D),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(268, 65),
                      backgroundColor: Color(0xffD75D72),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    child: Text(
                      'ORDER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
