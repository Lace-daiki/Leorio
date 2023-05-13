import 'package:flutter/material.dart';
import 'package:leorio/screens/checkout.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 100,
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
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.v4NQJ6ITn1zDR2zOhqKTZQHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7"),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Sharwarma',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '₦ 2000',
                              style: TextStyle(
                                color: Color(0xff5542fc),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.black26,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    color: Colors.white,
                                    iconSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("1"),
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.black26,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove),
                                    color: Colors.white,
                                    iconSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.close),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Total: ₦2000',
            style: TextStyle(
              color: Color(0xff5542fc),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                icon: Icon(
                  Icons.arrow_back,
                ),
                label: Text(
                  "Proceed",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff5542fd),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
