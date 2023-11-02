import 'package:flutter/material.dart';

getVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

callTextField(
    {required String hintText,
    required TextEditingController inputcontroller,
    required int max}) {
  return TextFormField(
    maxLines: max,
    controller: inputcontroller,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

TextStyle textStyle(
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  ) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }