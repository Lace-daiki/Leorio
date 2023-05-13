import 'package:flutter/material.dart';
import 'package:leorio/screens/cart.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Menu",
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 320,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff362396), Color(0xff6c4dc7)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/fox.png'),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'The Food App',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextButton.icon(
                  icon: Icon(Icons.email_outlined),
                  onPressed: () {},
                  label: Text("eoncjren@gmail.com"),
                ),
                TextButton.icon(
                  icon: Icon(Icons.email_outlined),
                  onPressed: () {},
                  label: Text("eoncjren@gmail.com"),
                ),
                // TextButton.icon(
                //   icon: Icon(Icons.email_outlined),
                //   onPressed: () {},
                //   label: Text("eoncjren@gmail.com"),
                // ),
              ],
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
                      width: 190,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 7,
                              spreadRadius: 3,
                              offset: Offset(0, 2)),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            child: Image.network(
                              "https://th.bing.com/th/id/OIP.v4NQJ6ITn1zDR2zOhqKTZQHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7",
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Sharwarma',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '₦ 2000',
                                style: TextStyle(
                                  color: Color(0xff5542fc),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                  child: Text('Add to cart'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff2569fe),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.0,
                      // left: 50,
                    ),
                    child: Container(
                      width: 190,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 7,
                            spreadRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            child: Image.network(
                              "https://th.bing.com/th/id/OIP.v4NQJ6ITn1zDR2zOhqKTZQHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7",
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Sharwarma',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '₦ 2000',
                                style: TextStyle(
                                  color: Color(0xff5542fc),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                  child: Text('Add to cart'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff2569fe),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
