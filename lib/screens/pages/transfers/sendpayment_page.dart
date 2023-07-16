import 'package:flutter/material.dart';
import 'package:leorio/screens/pages/transfers/sendfooduser/senddial_pad.dart';
import 'package:leorio/widgets/my_button.dart';
import 'package:leorio/widgets/my_text_field.dart';

class SendToUser extends StatelessWidget {
  const SendToUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send to Menu User",
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
      body: Form(
        child: Column(
          children: [
            MyTextField(
              fieldName: 'Enter @username',
            ),
            MyTextField(
              fieldName: 'Amount',
            ),
            MyTextField(
              fieldName: 'Narration',
            ),
            SizedBox(
              height: 280,
            ),
            MyButton(
              text: 'Proceed',
              icon: Icons.arrow_back_outlined,
              onTap: DialPadScreen(),
            )
          ],
        ),
      ),
    );
  }
}
