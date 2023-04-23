import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/spaces.dart';

class BackButton extends StatefulWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  State<BackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        height: space_11,
        width: space_11,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: darkGrey
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: white,
            size: space_4,
          ),
        )
      ),
    );
  }
}
