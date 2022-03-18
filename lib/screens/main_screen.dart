import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
              ),
            ),
            Expanded(
              flex: 60,
              child: GridView.count(
                padding: EdgeInsets.all(0),
                crossAxisCount: 4,
                children: [
                  button(
                    function: () => {print(1)},
                    text: "C",
                    colorType: 1,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "%",
                    colorType: 1,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "/",
                    colorType: 1,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "back",
                    colorType: 1,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "7",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "8",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "9",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "x",
                    colorType: 1,
                  ),

                  button(
                    function: () => {print(1)},
                    text: "4",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "5",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "6",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "-",
                    colorType: 1,
                  ),

                  button(
                    function: () => {print(1)},
                    text: "1",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "2",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "3",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "+",
                    colorType: 1,
                  ),

                  button(
                    function: () => {print(1)},
                    text: "=/-",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: "0",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
                    text: ".",
                    colorType: 0,
                  ),
                  button(
                    function: () => {print(1)},
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
