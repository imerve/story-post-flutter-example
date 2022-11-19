import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String child;
  const MyCircle({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: Container(
        height: 300,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.red[300]),
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
