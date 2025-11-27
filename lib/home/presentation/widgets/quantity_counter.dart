import 'package:flutter/material.dart';

class QuantityCounter extends StatefulWidget {
  @override
  _QuantityCounterState createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// زرار النقصان
          GestureDetector(
            onTap: () {
              setState(() {
                if (quantity > 1) quantity--;
              });
            },
            child: Icon(Icons.remove, size: 25),
          ),

          SizedBox(width: 20),

          /// الرقم
          Text(
            quantity.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(width: 20),

          /// زرار الزيادة
          GestureDetector(
            onTap: () {
              setState(() {
                quantity++;
              });
            },
            child: Icon(Icons.add, size: 25),
          ),
        ],
      ),
    );
  }
}
