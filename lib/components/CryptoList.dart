import 'package:flutter/material.dart';

class CryptoListComponent extends StatefulWidget {
  const CryptoListComponent({Key? key}) : super(key: key);

  @override
  _CryptoListComponentState createState() => _CryptoListComponentState();
}

class _CryptoListComponentState extends State<CryptoListComponent> {
  final List<Map<String, dynamic>> cards = [
    {
      "name": "BTC",
      "amount": "9 351,30",
      "percent": 2.17,
      "backgroundColor": Colors.yellow,
      "isIncrease": true
    },
    {
      "name": "XRP",
      "amount": "0,75",
      "percent": 2.17,
      "backgroundColor": Colors.lightGreen,
      "isIncrease": false
    },
    {
      "name": "ETH",
      "amount": "351,30",
      "percent": 0.17,
      "backgroundColor": Colors.deepPurple[100],
      "isIncrease": true
    },
    {
      "name": "LTC",
      "amount": "9 351,50",
      "percent": 2.17,
      "backgroundColor": Colors.pink[100],
      "isIncrease": false
    },
    {
      "name": "ADA",
      "amount": "0,75",
      "percent": 2.17,
      "backgroundColor": Colors.purple[300],
      "isIncrease": true
    },
    {
      "name": "DOT",
      "amount": "351,50",
      "percent": 0.17,
      "backgroundColor": Colors.yellow,
      "isIncrease": true
    },
    {
      "name": "BCH",
      "amount": "9 351,50",
      "percent": 2.17,
      "backgroundColor": Colors.lime,
      "isIncrease": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      color: cards[index]['backgroundColor'],
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                cards[index]['name'],
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                cards[index]['amount'].toString() + " €",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  cards[index]['isIncrease']
                      ? Icon(
                          Icons.arrow_drop_up,
                          color: Colors.green,
                          size: 14.0,
                        )
                      : Icon(Icons.arrow_drop_down,
                          color: Colors.red, size: 14.0),
                  Text(
                    cards[index]['percent'].toString() + " %",
                    style: TextStyle(
                        color: cards[index]['isIncrease']
                            ? Colors.green
                            : Colors.red),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
