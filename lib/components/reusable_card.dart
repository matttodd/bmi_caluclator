import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget child;
  final Function onTapFun;

  ReusableCard({@required this.cardColor, this.child, this.onTapFun});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFun,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
      ),
    );
  }
}
