import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/spaces.dart';
import 'package:gym/constants/fontSize.dart';
import 'package:gym/Widgets/AgePicker.dart';
import 'package:gym/Buttons/BottomBackButton.dart' as BackButton;
import 'package:gym/Buttons/NextButtonToWeightSelection.dart';

class AgeSelection extends StatefulWidget {
  const AgeSelection({Key? key}) : super(key: key);

  @override
  State<AgeSelection> createState() => _AgeSelectionState();
}

class _AgeSelectionState extends State<AgeSelection> {
  var value = 36;

  @override
  Widget build(BuildContext context) {
    var age;

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: space_16,
              ),
              child: Center(
                child: Text(
                  "HOW OLD ARE YOU ?",
                  style: TextStyle(
                    fontSize: size_10,
                    fontFamily: 'integralcf',
                    color: white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: space_3,
                left: space_10,
                right: space_10,
              ),
              child: Text(
                "THIS HELPS US TO CREATE YOUR PERSONALIZED PLAN",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white, fontSize: size_5, fontFamily: 'integralcf'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: space_22,
              ),
              child: AgePicker(initialAge: 36, onAgeChanged: (value) {
                setState(() {
                  age = value;
                });
              },),
            ),

            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      left: space_7,
                      bottom: space_9,
                      child: BackButton.BackButton()
                  ),

                  Positioned(
                      right: space_7,
                      bottom: space_9,
                      child: NextButtonToWeightSelection(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
