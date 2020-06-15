import 'package:flutter/material.dart';

class CreditCardMagneticBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width / 15.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: MediaQuery.of(context).size.width / 9,
      ),
    );
  }
}