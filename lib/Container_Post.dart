import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  const MySquare({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple[200]),
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
