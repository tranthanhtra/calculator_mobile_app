import 'dart:ffi';

import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxString prevResult = "0".obs;
  RxString result = "0".obs;

  String operator = "";
  bool showResult = false;
  double num = 0;
  bool operated = false;

  bool neg = false;

  void clear() {
    prevResult.value = "0";
    result.value = "0";
    operator = "";
    neg = false;
  }

  void operate(String op) {
    operated = true;
    print(result.value);
    num = double.parse(result.value);
    if (operator != "") {
      switch (operator) {
        case "+":
          num += double.parse(prevResult.value);
          break;
        case "-":
          num -= double.parse(prevResult.value);
          break;
        case "x":
          num *= double.parse(prevResult.value);
          break;
        case "/":
          num /= double.parse(prevResult.value);
          break;
      }
      if ((num - num.round()) == 0) {
        result.value = num.round().toString();
      } else {
        result.value = num.toString();
      }
    } else {
      num = double.parse(prevResult.value);
      result.value = prevResult.value;
    }

    print(num);

    if (op == "%") {
      num /= 100;
      if ((num - num.round()) == 0) {
        result.value = num.round().toString();
      } else {
        result.value = num.toString();
      }
    }

    operator = op;
  }

  void negative() {
    if (prevResult.value != "0" && !prevResult.value.endsWith(".")) {
      if (!neg) {
        prevResult.value = "-" + prevResult.value;
      } else {
        prevResult.value =
            prevResult.value.substring(1, prevResult.value.length);
      }
      neg = !neg;
    }
  }
}
