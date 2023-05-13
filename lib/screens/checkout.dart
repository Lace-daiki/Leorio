import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _value = 0;
  int _val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 35.0,
                bottom: 13,
              ),
              child: Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 380,
              height: 140,
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
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.account_balance_outlined,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Send to Bank',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.credit_card,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Card Payment',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35.0,
                bottom: 13,
              ),
              child: Text(
                "Delivery Method",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 380,
              height: 140,
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
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _val,
                          onChanged: (value) {
                            setState(() {
                              _val = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.local_shipping,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Door Delivery',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: _val,
                          onChanged: (value) {
                            setState(() {
                              _val = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.directions_walk_outlined,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Pick up',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    label: Text(
                      "Pay Now",
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
            ),
          ],
        ),
      ),
    );
  }
}
