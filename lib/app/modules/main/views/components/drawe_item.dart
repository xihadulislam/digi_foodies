import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String s;

  var function;

  DrawerItem(this.s, this.function);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Icon(Icons.dashboard,color: Colors.white,),
            SizedBox(width: 8,),
            Text(
              " $s",
              style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
