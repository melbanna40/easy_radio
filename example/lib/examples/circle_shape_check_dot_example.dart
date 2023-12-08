import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';

class CircleShapeCheckDotExample extends StatefulWidget {
  const CircleShapeCheckDotExample({super.key});

  @override
  State<CircleShapeCheckDotExample> createState() =>
      _CircleShapeCheckDotExampleState();
}

class _CircleShapeCheckDotExampleState
    extends State<CircleShapeCheckDotExample> {
  int? _groupValue = 1;

  void _onChanged(int? value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        EasyRadio<int>(
          value: 1,
          groupValue: _groupValue,
          onChanged: _onChanged,
          dotStyle: const DotStyle.check(StrokeCap.round),
        ),
        EasyRadio<int>(
          value: 2,
          groupValue: _groupValue,
          onChanged: _onChanged,
          dotStyle: const DotStyle.check(StrokeCap.round),
        ),
        EasyRadio<int>(
          value: 3,
          groupValue: _groupValue,
          onChanged: _onChanged,
          dotStyle: const DotStyle.check(StrokeCap.round),
        ),
      ],
    );
  }
}