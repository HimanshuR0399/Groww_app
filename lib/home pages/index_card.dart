import 'package:flutter/material.dart';
import 'package:groww_app/pages/stockinfo.dart';
class Indexcard extends StatelessWidget {
  String name;
  String symbol;
  String imageurl;
  double price;
  double change;
  double changePercentage;

  Indexcard(
      {required this.name, required this.symbol, required this.imageurl, required this.price, required this.change, required this.changePercentage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 160,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    price.toDouble().toString()
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Text(
                      change.toDouble().toString() +"%",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: change.toDouble() < 0 ? Colors.red : Colors.green,
                      ),
                    ),
                    SizedBox(width: 3,),
                    Text(
                      "("+changePercentage.toDouble().toString() +"%)",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: changePercentage.toDouble() < 0 ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
      onTap: () => Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => Coinpage(name: this.name, symbol: this.symbol, imageurl: this.imageurl, price: this.price, change: this.change, changePercentage: this.changePercentage),
          )) ,
    );
  }
}
