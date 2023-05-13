import 'package:flutter/material.dart';
import 'package:leorio/screens/food_menu.dart';

class Vendors extends StatefulWidget {
  const Vendors({Key? key}) : super(key: key);

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vendors",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black45,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black45,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black45,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Transactions',
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Settings',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find vendor...',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    10,
                    (index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 14.0,
                                // left: 50,
                              ),
                              child: Container(
                                width: 350,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 7,
                                        spreadRadius: 3,
                                        offset: Offset(0, 2)),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            AssetImage("images/fox.png"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("The Food app"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        FoodMenu()));
                                          },
                                          icon: Icon(Icons.arrow_forward))
                                    ],
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
    );
  }
}
