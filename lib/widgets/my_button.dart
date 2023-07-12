import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final onTap;

  MyButton(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: 260,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff5742FF),
                Color(0xff1CB3FF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: MaterialButton(
            padding: EdgeInsets.all(10.0),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => onTap));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 5.0),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
