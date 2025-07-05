import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  final double height;
  final double textSize;
  final Color textColor;
  final VoidCallback? olp;
  const MyButton({
    super.key,
    required this.title,
    this.color = const Color.fromARGB(255, 22, 22, 22),
    required this.onPress,
    this.height = 120,
    this.textSize = 24,
    this.textColor = const Color(0xffFFFFFF),
    this.olp,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: olp,
      onTap: onPress,
      child: Container(
        width: 102.85,
        height: height,
        color: color,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: textColor, fontSize: textSize),
          ),
        ),
      ),
    );
  }
}
