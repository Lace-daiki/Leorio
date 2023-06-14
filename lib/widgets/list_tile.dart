import "package:flutter/material.dart";

class ListTileWidget extends StatelessWidget {
  String title;
  IconData leadingIcon;
  IconData trailingIcon;
  final onTap;

  ListTileWidget(
      {required this.title,
      required this.leadingIcon,
      this.trailingIcon = Icons.arrow_forward,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 53,
        width: 360,
        child: ListTile(
          tileColor: Colors.white,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              width: 1.0,
              color: Colors.transparent,
            ),
          ),
          title: Text(title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          leading: Icon(leadingIcon),
          trailing: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => onTap));
              },
              icon: Icon(trailingIcon)),
        ),
      ),
    );
  }
}
