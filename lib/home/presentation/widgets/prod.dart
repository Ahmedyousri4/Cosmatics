import 'package:cosmatics_app/home/data/model/category_List.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({super.key});
  final List<CategoryList> categories = [
    CategoryList(
      name: 'Bundles',
      image: 'assets/images/prod_3.png',

    ),
    CategoryList(
      name: 'Products',
      image: 'assets/images/prod_4.png',

    ),
    CategoryList(
      name: 'Services',
      image: 'assets/images/prod_5.png',

    ),
    CategoryList(
      name: 'Services',
      image: 'assets/images/prod_5.png',

    ),

    CategoryList(
      name: 'Offers',
      image: 'assets/images/prod_6.png',

    ),
    CategoryList(
      name: 'Deals',
      image: 'assets/images/prod_7.png',

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return  Row(
              children: [
        Padding(
                padding: const EdgeInsets.only(top: 31, right: 12, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    categories[index].image,
                    height: 69,
                    width: 64,
                  ),
                ),
              ),
              Text(
                categories[index].name,
                style: TextStyle(
                  color: Color(0xff434C6D),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
              ],
            );
      },
      separatorBuilder: (context, index) =>Divider(
                color: Color(0xffB3B3C1),
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
    );
  }
}
