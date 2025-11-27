import 'package:cosmatics_app/home/data/model/caregory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/prod_2.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_3.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_4.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_5.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_6.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_7.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_8.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
    CategoryModel(
      image: 'assets/images/prod_9.png',
      title: 'Face tint / lip tint',
      subtitle: '\$44.99',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 12),
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 176 / 237,
        mainAxisExtent: 265,
      ),
    
      itemBuilder:
          (context, index) => Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffD9D9D9),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                  color: Color(0xff000000).withValues(alpha: .25),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Expanded(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            categories[index].image,
                            width: 190,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        margin: EdgeInsetsDirectional.only(top: 10, end: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg_Icons/cart.svg',
                          height: 30,
                          width: 30,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Text(
                  categories[index].title,
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  categories[index].subtitle,
                  style: TextStyle(
                    color: Color(0xff70839C),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
    );
    // GridView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: 6,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 12,
    //     mainAxisSpacing: 12,
    //     childAspectRatio: 176 / 290,
    //   ),
    //   itemBuilder: (context, index) {
    //     decoration:
    //     BoxDecoration(
    //       color: Color(0xff434C6D),
    //       borderRadius: BorderRadius.circular(10),
    //       boxShadow: [
    //         BoxShadow(
    //           spreadRadius: 0,
    //           blurRadius: 10,
    //           offset: Offset(0, 2), // changes position of shadow
    //         ),
    //       ],
    //     );
    //     Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Image.asset('assets/images/prod_2.png',
    //           height: 169,
    //           width: 161,
    //           ),
    //           Stack(
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsetsDirectional.only(
    //                   end: 10,
    //                   bottom: 10,
    //                   top: 10,
    //                   start: 10,
    //                 ),
    //                 child: Container(
    //                   height: 200,
    //                   alignment: AlignmentDirectional.topEnd,
    //                   width: double.infinity,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10),
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsetsDirectional.only(
    //                       top: 10,
    //                       end: 10,
    //                     ),
    //                     child: Container(
    //                       height: 30,
    //                       width: 30,
    //                       decoration: BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.circular(10),
    //                       ),
    //                       child: SvgPicture.asset(
    //                         'assets/svg_Icons/cart.svg',
    //                         height: 30,
    //                         width: 30,
    //                         fit: BoxFit.scaleDown,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
