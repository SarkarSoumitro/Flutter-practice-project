import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expirymonth;
  final int expiryyear;
  final color;
  const MyCards(
      {super.key,
      required this.balance,
      required this.cardnumber,
      required this.color,
      required this.expirymonth,
      required this.expiryyear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Balance",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text("\$" + balance.toString(),
                style: TextStyle(color: Colors.white, fontSize: 28)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(cardnumber.toString(),
                    style: TextStyle(color: Colors.white)),
                //card expiry date
                Text(expirymonth.toString() + "/" + expiryyear.toString(),
                    style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
