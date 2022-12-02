import 'package:flutter/material.dart';
import '/utils/my_card.dart';
import '/utils/my_button.dart';
import '/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //pagecontroller
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.green[400],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.green[800],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  //icon
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            //Cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: controller,
                children: [
                  MyCard(
                    balance: 54500.00,
                    cardNumber: 123456789,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepOrange[400],
                  ),
                  MyCard(
                    balance: 5500.00,
                    cardNumber: 123456789,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.orange[400],
                  ),
                  MyCard(
                    balance: 5500.00,
                    cardNumber: 123456789,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.orangeAccent[400],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconImagePath: 'assets/money.jpg',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImagePath: 'assets/pay.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    iconImagePath: 'assets/bill.png',
                    buttonText: 'Bills',
                  ),
                  //send button
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //Column = statics, transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                      iconImagePath: 'assets/statics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payment and Income'),

                  //transaction
                  MyListTile(
                      iconImagePath: 'assets/transactions.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Transaction History'),
                ],
              ),
            ),
            //statics
          ],
        ),
      ),
    );
  }
}
