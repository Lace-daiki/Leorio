import 'package:flutter/material.dart';
import 'package:leorio/widgets/my_button.dart';

class PaymentDialPad extends StatefulWidget {
  @override
  _PaymentDialPadState createState() => _PaymentDialPadState();
}

class _PaymentDialPadState extends State<PaymentDialPad> {
  String pin = '';

  void _updatePin(String value) {
    setState(() {
      if (value == 'delete') {
        if (pin.length > 0) {
          pin = pin.substring(0, pin.length - 1);
        }
      } else {
        if (pin.length < 4) {
          pin += value;
        }
      }
    });
  }

  void _authenticateFingerprint() {
    // TODO: Implement fingerprint authentication logic
    print('Authenticating fingerprint...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter PIN',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              pin,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDialPadButton('1'),
                _buildDialPadButton('2'),
                _buildDialPadButton('3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDialPadButton('4'),
                _buildDialPadButton('5'),
                _buildDialPadButton('6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDialPadButton('7'),
                _buildDialPadButton('8'),
                _buildDialPadButton('9'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDialPadButton('fingerprint', icon: Icons.fingerprint),
                _buildDialPadButton('0'),
                _buildDialPadButton('delete', icon: Icons.backspace),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              text: 'Proceed',
              icon: Icons.arrow_back_outlined,
              onTap: '',
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDialPadButton(String value, {IconData? icon}) {
    final uniqueTag = UniqueKey().toString(); // Generate a unique tag
    return SizedBox(
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Hero(
          tag: uniqueTag,
          child: FloatingActionButton(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {
              if (value == 'fingerprint') {
                _authenticateFingerprint();
              } else {
                _updatePin(value);
              }
            },
            child: icon != null
                ? Icon(
                    icon,
                    size: 30,
                  )
                : Text(value),
          ),
        ),
      ),
    );
  }
}
