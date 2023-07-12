import 'package:flutter/material.dart';
import 'package:leorio/widgets/my_button.dart';

class ReceiveUsername extends StatelessWidget {
  const ReceiveUsername({super.key});

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
                height: 50,
                child: Center(
                    child: Text(
                  'Use @username',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
              height: 470,
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
