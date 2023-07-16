import 'package:flutter/material.dart';
import 'package:leorio/widgets/my_button.dart';

class DialPadScreen extends StatefulWidget {
  @override
  _DialPadScreenState createState() => _DialPadScreenState();
}

class _DialPadScreenState extends State<DialPadScreen> {
  String enteredDigits = '';

  void _onDigitPressed(String digit) {
    setState(() {
      enteredDigits += digit;
    });
  }

  void _onClearPressed() {
    setState(() {
      enteredDigits = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send to menu user",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ENTER PIN',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              enteredDigits,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDigitButton('1'),
                _buildDigitButton('2'),
                _buildDigitButton('3'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDigitButton('4'),
                _buildDigitButton('5'),
                _buildDigitButton('6'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDigitButton('7'),
                _buildDigitButton('8'),
                _buildDigitButton('9'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildFingerPrintButton(),
                _buildDigitButton('0'),
                _buildClearButton(),
              ],
            ),
            SizedBox(
              height: 20,
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

  Widget _buildDigitButton(String digit) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 7,
              spreadRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // background (button) color
            foregroundColor: Colors.black, // foreground (text) color
          ),
          onPressed: () => _onDigitPressed(digit),
          child: Text(
            digit,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget _buildClearButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 7,
              spreadRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // background (button) color
            foregroundColor: Colors.black, // foreground (text) color
          ),
          onPressed: _onClearPressed,
          child: Icon(
            Icons.backspace_outlined,
            size: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildFingerPrintButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 7,
              spreadRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // background (button) color
            foregroundColor: Colors.black, // foreground (text) color
          ),
          onPressed: () {},
          child: Center(
            child: Icon(
              Icons.fingerprint,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
