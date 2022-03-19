import 'package:calculator/controllers/calculator_controller.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 40,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 100),
                        alignment: Alignment.centerRight,
                        child: Obx(() {
                          return Text(
                            calculatorController.prevResult.value,
                            style: TextStyle(fontSize: 60),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      flex: 50,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Obx(() {
                          return Text(
                            calculatorController.result.value,
                            style: TextStyle(fontSize: 60),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 60,
              child: GridView.count(
                padding: EdgeInsets.all(0),
                crossAxisCount: 4,
                children: [
                  button(
                    function: () => {calculatorController.clear()},
                    text: "C",
                    colorType: 1,
                  ),
                  button(
                    function: () => {calculatorController.operate("%")},
                    text: "%",
                    colorType: 1,
                  ),
                  button(
                    function: () => {calculatorController.operate("/")},
                    text: "/",
                    colorType: 1,
                  ),
                  button(
                    function: () {
                      String tmp = calculatorController.prevResult.value;
                      if (tmp.isNotEmpty) {
                        calculatorController.prevResult.value =
                            tmp.substring(0, tmp.length - 1);
                      }
                    },
                    text: "back",
                    colorType: 1,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "7";
                      } else {
                        calculatorController.prevResult.value = "7";
                        calculatorController.operated = false;
                      }
                    },
                    text: "7",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "8";
                      } else {
                        calculatorController.prevResult.value = "8";
                        calculatorController.operated = false;
                      }
                    },
                    text: "8",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "9";
                      } else {
                        calculatorController.prevResult.value = "9";
                        calculatorController.operated = false;
                      }
                    },
                    text: "9",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      calculatorController.operate("x");
                    },
                    text: "x",
                    colorType: 1,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "4";
                      } else {
                        calculatorController.prevResult.value = "4";
                        calculatorController.operated = false;
                      }
                    },
                    text: "4",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "5";
                      } else {
                        calculatorController.prevResult.value = "5";
                        calculatorController.operated = false;
                      }
                    },
                    text: "5",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "6";
                      } else {
                        calculatorController.prevResult.value = "6";
                        calculatorController.operated = false;
                      }
                    },
                    text: "6",
                    colorType: 0,
                  ),
                  button(
                    function: () => {calculatorController.operate("-")},
                    text: "-",
                    colorType: 1,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "1";
                      } else {
                        calculatorController.prevResult.value = "1";
                        calculatorController.operated = false;
                      }
                    },
                    text: "1",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "2";
                      } else {
                        calculatorController.prevResult.value = "2";
                        calculatorController.operated = false;
                      }
                    },
                    text: "2",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (!calculatorController.operated &&
                          calculatorController.prevResult.value != "0") {
                        calculatorController.prevResult.value += "3";
                      } else {
                        calculatorController.prevResult.value = "3";
                        calculatorController.operated = false;
                      }
                    },
                    text: "3",
                    colorType: 0,
                  ),
                  button(
                    function: () => {calculatorController.operate("+")},
                    text: "+",
                    colorType: 1,
                  ),
                  button(
                    function: () => {calculatorController.negative()},
                    text: "+/-",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (calculatorController.prevResult.value != "0") {
                        if (!calculatorController.operated) {
                          calculatorController.prevResult.value += "0";
                        } else {
                          calculatorController.prevResult.value = "0";
                          calculatorController.operated = false;
                        }
                      }
                    },
                    text: "0",
                    colorType: 0,
                  ),
                  button(
                    function: () {
                      if (calculatorController.prevResult.value.contains(".")) {
                        return;
                      } else if (calculatorController.prevResult.value == "") {
                        calculatorController.prevResult.value = "0.";
                      } else {
                        calculatorController.prevResult.value += ".";
                      }
                    },
                    text: ".",
                    colorType: 0,
                  ),
                  button(
                    function: () => {
                      calculatorController.operate("="),
                    },
                    text: "=",
                    colorType: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
