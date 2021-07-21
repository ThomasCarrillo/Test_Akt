import 'package:flutter/material.dart';

class TokenListComponent extends StatefulWidget {
  const TokenListComponent({Key? key}) : super(key: key);

  @override
  _TokenListComponentState createState() => _TokenListComponentState();
}

class _TokenListComponentState extends State<TokenListComponent> {
  final List<Map<String, dynamic>> cards = [
    {
      "name": "DENT",
      "amount": "9 351,50",
      "percent": 2.17,
      "backgroundColor": Colors.blueAccent,
      "isIncrease": true
    },
    {
      "name": "UNI",
      "amount": "0,75",
      "percent": 2.17,
      "backgroundColor": Colors.red,
      "isIncrease": false
    },
    {
      "name": "AAVE",
      "amount": "351,50",
      "percent": 2.69,
      "backgroundColor": Colors.deepPurple[200],
      "isIncrease": true
    },
    {
      "name": "DENT",
      "amount": "9 351,50",
      "percent": 2.17,
      "backgroundColor": Colors.lime[900],
      "isIncrease": false
    },
    {
      "name": "UNI",
      "amount": "0,75",
      "percent": 2.17,
      "backgroundColor": Colors.purple[300],
      "isIncrease": true
    },
    {
      "name": "AAVE",
      "amount": "351,50",
      "percent": 2.69,
      "backgroundColor": Colors.blueAccent,
      "isIncrease": true
    },
    {
      "name": "DENT",
      "amount": "9 351,50",
      "percent": 2.17,
      "backgroundColor": Colors.red,
      "isIncrease": false
    }
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
