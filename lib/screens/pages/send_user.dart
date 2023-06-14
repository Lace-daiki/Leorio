import 'package:flutter/material.dart';
import 'package:leorio/widgets/list_tile.dart';

class SendUser extends StatelessWidget {
  const SendUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send",
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
              title: 'To Foodapp User',
              leadingIcon: Icons.person_outlined,
              onTap: 'jnsvf',
            ),
            ListTileWidget(
              title: 'Send to bank',
              leadingIcon: Icons.account_balance_outlined,
              onTap: 'jdncs',
            ),
          ],
        ),
      ),
    );
  }
}
