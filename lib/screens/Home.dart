import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/Brand.dart';
import '../components/CryptoList.dart';
import '../components/TokenList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        elevation: 0,
        title: Text(
          "Investissement",
          style: TextStyle(fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            toolbarHeight: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: BrandComponent(
                imagePath: "assets/images/brand_img.png",
                btnText: 'Learn More',
                description:
                    'Purchase our exclusive token with 25% bonus & get your lifetime ??? membership now',
                mainTitle: 'AKT Token',
                onPressed: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Crypto",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CryptoListComponent(),
                  Text(
                    "Token",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TokenListComponent(),
                  Text(
                    "Crypto",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CryptoListComponent(),
                  Text(
                    "Token",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TokenListComponent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
