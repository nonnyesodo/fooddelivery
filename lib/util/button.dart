import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback ontap;
  final String labelt;
  final Color colour;
  final Color tcolor;
  const Button({
    Key? key,
    required this.ontap,
    required this.labelt,
    required this.colour,
    required this.tcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            backgroundColor: colour, // Background color
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              labelt,
              style: TextStyle(color: tcolor),
            ),
          ),
        ));
  }
}
