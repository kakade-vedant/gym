import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/constants/Colors.dart';
import 'package:gym/constants/spaces.dart';
import 'package:gym/constants/fontSize.dart';

class AgePicker extends StatefulWidget {
  final int initialAge;
  final ValueChanged<int> onAgeChanged;

  const AgePicker({
    Key? key,
    required this.initialAge,
    required this.onAgeChanged,
  }) : super(key: key);

  @override
  _AgePickerState createState() => _AgePickerState();
}

class _AgePickerState extends State<AgePicker> {
  int _age = 12;

  @override
  void initState() {
    super.initState();
    _age = widget.initialAge;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: space_23,
      child: CupertinoPicker(
        itemExtent: space_20,
        onSelectedItemChanged: (index) {
          setState(() {
            _age = 12 + index; // starting age is 18
          });
          widget.onAgeChanged(_age);
        },
        diameterRatio: 1.5,
        selectionOverlay: Container(
          height: space_10,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: yellow, width: 3))
          ),
        ),
        scrollController: FixedExtentScrollController(
          initialItem: widget.initialAge - 12,
        ),
        children: List.generate(
          89, // generate items from 18 to 100 years
              (index) => Container(
                alignment: Alignment.center,
                child: Text(
                  '${12 + index}',
                  style: TextStyle(
                    fontSize: size_29,
                    color: white
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
