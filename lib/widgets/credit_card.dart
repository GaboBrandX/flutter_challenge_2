import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/credit_card_back_content.dart';
import 'package:flutterchallenge2/widgets/credit_card_front_content.dart';
import 'package:flutterchallenge2/widgets/credit_card_plastic.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  bool _showBackSide = false;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animation.addListener(() {
      if (_animation.value >= 0.5 && !_showBackSide) {
        setState(() {
          _showBackSide = true;
        });
      } else if (_animation.value < 0.5 && _showBackSide) {
        setState(() {
          _showBackSide = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(_animation.value * math.pi),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              if (_animationController.status == AnimationStatus.completed) {
                _animationController.reverse();
              }
              if (_animationController.status == AnimationStatus.dismissed) {
                _animationController.forward();
              }
            },
            child: Builder(builder: (context) {
              if (!_showBackSide) {
                return CreditCardPlastic(
                  child: CreditCardFrontContent(),
                );
              }
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(math.pi),
                alignment: Alignment.center,
                child: CreditCardPlastic(
                  child: CreditCardBackContent(),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}