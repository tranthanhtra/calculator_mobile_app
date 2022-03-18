import 'package:flutter/material.dart';

GestureDetector button({
  required Function function,
  int colorType = 0,
  String text = "",
  Icon? icon,
}) {
  return GestureDetector(
    onTap: () => function(),
    child: Container(
      decoration: BoxDecoration(
          color: colorType == 0
              ? Colors.white
              : colorType == 1
                  ? Colors.grey
                  : Colors.lightGreen,
          border: Border.all(
            width: 0.2,
            color: Colors.black,
          )),
      alignment: Alignment.center,
      child: text != ""
          ? Text(
              text,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: colorType == 0
                    ? Colors.black
                    : colorType == 1
                        ? Colors.lightBlueAccent
                        : Colors.white,
              ),
            )
          : icon,
    ),
  );
}
