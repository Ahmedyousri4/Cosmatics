import 'package:cosmatics_app/home/data/model/cart_model.dart';
import 'package:cosmatics_app/home/presentation/widgets/quantity_counter.dart';
import 'package:flutter/material.dart';

class CartDetail extends StatelessWidget {
  CartDetail({super.key});
  final List<CartModel> cartList = [
    CartModel(
      image: 'assets/images/prod_10.png',
      title: 'Note Cosmetics',
      subtitle: 'Ultra rich mascara for lashes',
      price: '350 EGP',
    ),
    CartModel(
      image: 'assets/images/prod_11.png',
      title: 'Note Cosmetics',
      subtitle: 'Ultra rich mascara for lashes',
      price: '350 EGP',
    ),
    CartModel(
      image: 'assets/images/prod_12.png',
      title: 'Note Cosmetics',
      subtitle: 'Ultra rich mascara for lashes',
      price: '350 EGP',
    ),
    CartModel(
      image: 'assets/images/prod_13.png',
      title: 'Note Cosmetics',
      subtitle: 'Ultra rich mascara for lashes',
      price: '350 EGP',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cartList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 31, right: 12, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  
                  cartList[index].image,
                  height: 102,
                  width: 102,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartList[index].title,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    Text(
                      cartList[index].subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff434C6D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      cartList[index].price,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff434C6D),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: QuantityCounter(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
