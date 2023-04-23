import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/fontSize.dart';
import 'package:gym/constants/radius.dart';
import 'package:gym/constants/spaces.dart';
import 'package:get/get.dart';
import 'package:gym/OnBoarding/HeightSelection.dart';

class NextButtonToHeightSelection extends StatefulWidget {
  const NextButtonToHeightSelection({Key? key}) : super(key: key);

  @override
  State<NextButtonToHeightSelection> createState() => _NextButtonToHeightSelectionState();
}

class _NextButtonToHeightSelectionState extends State<NextButtonToHeightSelection> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(HeightSelection()),
      child: Container(
        height: space_8,
        width: space_20,
        decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(radius_10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: space_6 - 2,
            ),
            Text(
              "Next",
              style: TextStyle(
                fontSize: size_8,
                fontWeight: FontWeight.w600,
              ),
            ),
            // SizedBox(
            //   width: space_2,
            // ),
            Icon(
              Icons.arrow_right_outlined,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}
