import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/Buttons/BottomBackButton.dart' as BackButton;
import 'package:gym/Buttons/NextButtonToHeightSelection.dart';
import 'package:gym/OnBoarding/HeightSelection.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/fontSize.dart';
import 'package:gym/constants/spaces.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

class WeightSelection extends StatefulWidget {
  const WeightSelection({Key? key}) : super(key: key);

  @override
  State<WeightSelection> createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  int value = 54;

  @override
  Widget build(BuildContext context) {
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
                  "WHAT'S YOUR WEIGHT",
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
                "YOU CAN ALWAYS CHANGE THIS LATER",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white, fontSize: size_5, fontFamily: 'integralcf'),
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                top: space_36,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$value",
                    style: TextStyle(
                      fontSize: size_32,
                      color: white,
                    ),
                  ),
                  SizedBox(
                    width: space_2,
                  ),
                  Text(
                    "kg",
                    style: TextStyle(
                      fontSize: size_9,
                      color: white,
                    ),)
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                top: space_2
              ),
              child: RulerPicker(
                  beginValue: 30,
                  endValue: 150,
                  initValue: value,
                  rulerBackgroundColor: Colors.transparent,
                  onValueChange: (value1) {
                    setState(() {
                      value = value1;
                    });
                  },
                  width: MediaQuery.of(context).size.width,
                  height: space_24
              ),
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
                    child: NextButtonToHeightSelection(),
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
