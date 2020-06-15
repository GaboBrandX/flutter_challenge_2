import 'dart:ui';

import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final BorderRadius _gradientButtonBorder = BorderRadius.only(
    bottomLeft: Radius.circular(32.0),
    topLeft: Radius.circular(32.0),
    bottomRight: Radius.circular(32.0),
    topRight: Radius.circular(6.0),
  );
  final String text;
  final double width;
  final double height;
  final Color beginColor;
  final Color endColor;

  GradientButton({
    this.text,
    this.width,
    this.height,
    this.beginColor,
    this.endColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: _gradientButtonBorder,
      ),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    width: width / 1.5,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: _gradientButtonBorder,
                      boxShadow: [
                        BoxShadow(
                          color: beginColor.withOpacity(0.2),
                          offset: Offset(0.0, 8.0),
                          blurRadius: 8.0,
                          spreadRadius: 4.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    width: width / 1.5,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: _gradientButtonBorder,
                      boxShadow: [
                        BoxShadow(
                          color: endColor.withOpacity(0.2),
                          offset: Offset(0.0, 8.0),
                          blurRadius: 8.0,
                          spreadRadius: 4.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: InkWell(
              borderRadius: _gradientButtonBorder,
              onTap: () {},
              child: Ink(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    colors: [
                      beginColor,
                      endColor,
                    ],
                  ),
                  borderRadius: _gradientButtonBorder,
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
