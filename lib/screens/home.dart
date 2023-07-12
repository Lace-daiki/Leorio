import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:leorio/screens/Vendor_page.dart';
import 'package:leorio/screens/cart.dart';
import 'package:leorio/screens/pages/reciever.dart';
import 'package:leorio/screens/pages/transactions_page.dart';

import 'pages/send_user.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black45,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black45,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(42.0),
            child: Container(
              width: 340,
              height: 195,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff362396),
                    Color(0xff6749c1),
                    Color(0xff6c4dc7),
                    Color(0xff9a80e3),
                  ],
                  stops: [
                    0.01,
                    0.4,
                    0.6,
                    0.9,
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Available balance :",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Text(
                    "₦ 5,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 38.0,
                  ),
                  Container(
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Receiver()));
                                },
                                icon: Icon(
                                  Icons.arrow_circle_down_outlined,
                                  size: 24,
                                ),
                                label: Text(
                                  "Receive",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff5542fd),
                                ),
                              ),
                            ),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: SizedBox(
                              width: 100,
                              height: 50,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SendUser()));
                                },
                                icon: Icon(
                                  Icons.arrow_circle_up_outlined,
                                ),
                                label: Text(
                                  "Send",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff5542fd),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(46.0),
            child: Container(
              width: 340,
              height: 199,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 7,
                      spreadRadius: 3,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -70,
                    left: 20,
                    right: 20,
                    child: Image(
                      image: AssetImage("images/jollof.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 90,
                    child: Text(
                      "Buy Food Now",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Vendors()));
                          },
                          icon: Icon(Icons.arrow_back),
                          label: Text(
                            "Buy Now",
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff5542fd),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
