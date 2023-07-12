import 'package:flutter/material.dart';
import 'package:leorio/widgets/my_button.dart';

class ReceiveBankPayment extends StatelessWidget {
  const ReceiveBankPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Receive payment",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              child: Container(
                width: 500,
                height: 100,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Providus Bank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Daniel Moses - Foodapp',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: '2233737444'),
                            // SizedBox(width: 5,),
                            WidgetSpan(child: Icon(Icons.copy)),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 4,
                        offset: Offset(0, 2)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 450,
            ),
            MyButton(
              text: 'Share details',
              icon: Icons.arrow_back_outlined,
              onTap: 'onTap',
            )
          ],
        ),
      ),
    );
  }
}
