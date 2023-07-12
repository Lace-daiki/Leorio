import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    // required this.myController,
    this.prefixIconColor = Colors.blueAccent,
    // required TextEditingController productController,
  }) : super(key: key);

  // final TextEditingController myController;
  final String fieldName;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 7,
                spreadRadius: 4,
                offset: Offset(1, 2)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: fieldName,
                // border: const OutlineInputBorder(),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.deepPurple.shade300),
                // ),
                labelStyle: const TextStyle(color: Colors.blueGrey)),
          ),
        ),
      ),
    );
  }
}
