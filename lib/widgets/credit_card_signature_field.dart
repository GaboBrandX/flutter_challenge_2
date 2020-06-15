import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/credit_card_signature_line.dart';

class CreditCardSignatureField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: MediaQuery.of(context).size.width / 13,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: CustomPaint(
                  painter: NoisePainter(3, Color(0xFF575757)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: List.generate(3, (index) => CreditCardSignatureLine()),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: (MediaQuery.of(context).size.width / 13) * 1.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoisePainter extends CustomPainter {
  final int noiseIntensity;
  final Color color;

  NoisePainter(
      this.noiseIntensity,
      this.color,
      );

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 2.0;
    for (var x = 0.0; x < size.width; x++) {
      for (var y = 0.0; y < size.height; y++) {
        var drawPoint = math.Random().nextInt(noiseIntensity);
        if (drawPoint == 0) {
          canvas.drawPoints(
              PointMode.points,
              [Offset(x, y)],
              paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}