import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/credit_card.dart';
import 'package:flutterchallenge2/widgets/gradient_button.dart';

class CreditCardWizardPage extends StatefulWidget {
  @override
  _CreditCardWizardPageState createState() => _CreditCardWizardPageState();
}

class _CreditCardWizardPageState extends State<CreditCardWizardPage> {
  final InputBorder _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: BorderSide(
      width: 2.0,
      color: Colors.grey[300],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: <Widget>[
                        Text('Scan your card'),
                        IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            CreditCard(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 23.0, vertical: 32.0),
                child: Text(
                  'Type in your card details:',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Card Number',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: _outlineInputBorder,
                      enabledBorder: _outlineInputBorder,
                      focusedBorder: _outlineInputBorder,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GradientButton(
                        text: 'Next',
                        beginColor: Color(0xFF6A48B4),
                        endColor: Color(0xFFB62A8B),
                        width: 80.0,
                        height: 45.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
