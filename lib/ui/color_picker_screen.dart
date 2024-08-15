import 'package:flutter/material.dart';

class CustomColorPicker extends StatefulWidget {
  const CustomColorPicker({super.key});

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  Color selectedColor = Colors.lightBlueAccent;

  final List<Color> colors = [
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.blue,
    Colors.blueAccent,
    Colors.indigoAccent,
    Colors.indigo,
    Colors.deepPurpleAccent,
    Colors.deepPurple,
    Colors.purple,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.pink,
    Colors.redAccent,
    Colors.red,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.amber,
    Colors.amberAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.limeAccent,
    Colors.lime,
    Colors.lightGreenAccent,
    Colors.lightGreen,
    Colors.green,
    Colors.greenAccent,
    Colors.tealAccent,
    Colors.teal,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.blueGrey,
    Colors.grey,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selectedColor,
        title: const Text(
          "CustomColorPicker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 5,
                children: List.generate(colors.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = colors[index];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: colors[index],
                        border: selectedColor == colors[index]
                            ? Border.all(
                                width: 4.0,
                                color: Colors.black.withOpacity(0.13),
                              )
                            : null,
                        boxShadow: selectedColor == colors[index]
                            ? [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.67),
                                  offset: const Offset(-1, 1),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                ),
                              ]
                            : [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.26),
                                  offset: const Offset(1, 1),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                ),
                              ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
