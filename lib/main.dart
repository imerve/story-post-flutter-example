import 'package:flutter/material.dart';
import 'package:untitled/Story_Post.dart';

import 'Container_Post.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyhomePage(),
      appBar: AppBar(
        leading: Icon(
          Icons.assignment_turned_in_rounded,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Application",
            style: TextStyle(color: Colors.black),
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}

class MyhomePage extends StatelessWidget {
  MyhomePage({Key? key}) : super(key: key);

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 4',
    'post 4',
    'post 4',
    'post 4',
    'post 4',
  ];
  final List _stories = [
    'image 1',
    'image 2',
    'image 3',
    'image 4 ',
    'image 5',
    'image 5',
    'image 5',
    'image 5',
    'image 5',
    'image 5',
    'image 5',
    'image 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(child: _stories[index]);
                })),
        Expanded(
            flex: 4,
            child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(child: _posts[index]);
                })),
      ],
    );
  }
}
// ListView.builder(
//   physics: AlwaysScrollableScrollPhysics(),
//   itemCount: _posts.length,
//   itemBuilder: (context, index) {
//     return MySquare(child: _posts[index]);
//   },
// ),

// return Row(
// children: [
// ListView.builder(
// physics: AlwaysScrollableScrollPhysics(),
// itemCount: _stories.length,
// itemBuilder: (context, index) {
// return Column(
// children: [
// MySquare(child: _stories[index]),
// ],
// );
// },
// ),
// ],
// );
