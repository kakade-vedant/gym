import 'package:flutter/material.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/fontSize.dart';
import 'package:gym/constants/spaces.dart';
import 'package:gym/Buttons/NextButtonToAgeScreen.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMale = true;

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
                  "TELL US ABOUT YOURSELF",
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
                left: space_13,
                right: space_13,
              ),
              child: Text(
                "TO GIVE YOU A BETTER EXPERIENCE WE NEED TO KNOW YOUR GENDER",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white,
                    fontSize: size_5,
                    fontFamily: 'integralcf'
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  isMale = true;
                });
              },
              child: Container(
                height: space_28,
                width: space_28,
                margin: EdgeInsets.only(
                  top: space_21 + 3,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isMale ? yellow : darkGrey,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: space_7,
                      ),
                      child: Icon(
                        Icons.male,
                        color: isMale ? black : white,
                        size: space_9 + 3,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: space_4),
                      child: Text(
                        "Male",
                        style: TextStyle(
                            color: isMale ? black : white ,
                            fontSize: size_8
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  isMale = false;
                });
              },
              child: Container(
                height: space_28,
                width: space_28,
                margin: EdgeInsets.only(
                  top: space_9,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: !isMale ? yellow : darkGrey,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: space_7,
                      ),
                      child: Icon(
                        Icons.female,
                        color: !isMale ? black : white,
                        size: space_9 + 3,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: space_4),
                      child: Text(
                        "Female",
                        style: TextStyle(
                            color: !isMale ? black : white ,
                            fontSize: size_8
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // NextButtonToAgeScreen(),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    right: space_6,
                    bottom: space_9,
                    child: NextButtonToAgeScreen(),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
