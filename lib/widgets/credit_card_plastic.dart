import 'package:flutter/material.dart';

class CreditCardPlastic extends StatelessWidget {
  final Widget child;

  CreditCardPlastic({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 12.0,
      color: Color(0xFF3B3B3D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width - 46.0,
        height: (MediaQuery.of(context).size.width - 46.0) / 1.8,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}