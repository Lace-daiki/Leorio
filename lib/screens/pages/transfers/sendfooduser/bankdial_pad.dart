import 'package:flutter/material.dart';
import 'package:leorio/widgets/paymentdial_pad.dart';

class BankDialPad extends StatelessWidget {
  const BankDialPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "4-digit Code",
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
      body: PaymentDialPad(),
    );
  }
}
