
import 'package:cosmatics_app/home/presentation/widgets/prod.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
   CategoryView({super.key,});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        elevation: 0,
        title: 
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 128),
          child: Text(
            'Categories',
            style: TextStyle(
              color: Color(0xff434C6D),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
          start: 15,
          end: 15,
          top: 20,
          bottom: 10,
        ),
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
             Expanded(child: Products()),
            ],
          ),
        ),
      ),
    );
  }
}
