import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp_ui/util/Mytiles.dart';
import 'package:walletapp_ui/util/my_button.dart';
import 'package:walletapp_ui/util/my_cards.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                  //Icon (add icon)
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  MyCards(
                      balance: 154798.4545,
                      cardnumber: 23741534,
                      color: Colors.green[400],
                      expirymonth: 10,
                      expiryyear: 2024),
                  MyCards(
                      balance: 798.4545,
                      cardnumber: 86741534,
                      color: Colors.deepPurple[400],
                      expirymonth: 10,
                      expiryyear: 2024),
                  MyCards(
                      balance: 1598.4545,
                      cardnumber: 56551534,
                      color: Colors.blue[400],
                      expirymonth: 10,
                      expiryyear: 2024),
                  MyCards(
                      balance: 1547.4545,
                      cardnumber: 56741545,
                      color: Colors.deepOrangeAccent[400],
                      expirymonth: 10,
                      expiryyear: 2024),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            const SizedBox(
              height: 20,
            ),
            //buttons -> send + pay + bills
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                      buttonText: "send", imagepath: "images/transfer.png"),
                  //pay button
                  MyButton(
                      buttonText: "Pay",
                      imagepath: "images/money-transfer.png"),

                  //bill button
                  MyButton(buttonText: "Bill's", imagepath: "images/bill.png")
                ],
              ),
            ),

            //columns -> stats + transactions
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Listtiles(
                    imagepath: "images/analysis.png",
                    tiledescription: "Payment and income",
                    tilename: "Statistics",
                  ),
                  Listtiles(
                      imagepath: "images/credit-card.png",
                      tilename: "Transactions ",
                      tiledescription: "Traction History")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
