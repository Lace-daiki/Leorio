import 'package:flutter/material.dart';
import 'package:leorio/screens/pages/transfers/receivebank_payment.dart';
import 'package:leorio/screens/pages/transfers/receivepayment.dart';
import 'package:leorio/widgets/list_tile.dart';

class Receiver extends StatelessWidget {
  const Receiver({super.key});

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
            ListTileWidget(
              title: 'Use @username',
              leadingIcon: Icons.person_outlined,
              onTap: ReceiveUsername(),
            ),
            ListTileWidget(
              title: 'Bank details',
              leadingIcon: Icons.account_balance_outlined,
              onTap: ReceiveBankPayment(),
            ),
          ],
        ),
      ),
    );
  }
}
